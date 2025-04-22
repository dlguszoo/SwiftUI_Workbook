//
//  ReceiptViewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/16/25.
//

import SwiftUI
import Vision
import SwiftData

class ReceiptViewModel: ImageHandling, ObservableObject {
    
    @Published var image: UIImage = UIImage()
    @Published var receipt: ReceiptModel?
    
    func addImage(_ image: UIImage, completion: @escaping () -> Void) {
        self.image = image
        performOCR(on: image, completion: completion)
    }
    
    private func performOCR(on uiImage: UIImage, completion: @escaping () -> Void) {
        guard let cgImage = uiImage.cgImage else {
            self.receipt = nil
            return
        }
        
        let request = VNRecognizeTextRequest { [weak self] request, error in
            guard let self = self,
                  let observations = request.results as? [VNRecognizedTextObservation],
                  error == nil else {
                self?.receipt = nil
                return
            }
            
            let recognizedStrings = observations.compactMap { $0.topCandidates(1).first?.string }
            let fullText = recognizedStrings.joined(separator: "\n")
            let parsed = self.parseWithoutRegax(from: fullText)
            
            DispatchQueue.main.async {
                self.receipt = parsed
                completion()
            }
        }
        
        request.recognitionLevel = .accurate
        request.usesLanguageCorrection = true
        request.recognitionLanguages = ["ko-KR", "en-US"]
        
        DispatchQueue.global(qos: .userInitiated).async {
            let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
            try? handler.perform([request])
        }
    }
    
    private func parseWithoutRegax(from text: String) -> ReceiptModel? {
        let lines = text.components(separatedBy: .newlines)
        
        var orderdate = "주문날짜 없음"
        var store = "장소 없음"
        var totalAmount = 0
        
        var i = 0
        
        print("===== OCR 디버그 시작 =====")
        
        while i < lines.count {
            let trimmed = lines[i].trimmingCharacters(in: .whitespacesAndNewlines)
            print("📝 [\(i)] \(trimmed)")
            
            //주문 날짜
            if trimmed.range(of: #"\([A-Z]-\s*\d+\)"#, options: .regularExpression) != nil, i - 1 < lines.count {
                var dateLine = lines[i - 1].trimmingCharacters(in: .whitespaces)
                if dateLine.count >= 10 {
                    let index = dateLine.index(dateLine.startIndex, offsetBy: 10)
                    dateLine.insert(" ", at: index)
                }
                orderdate = dateLine
                i += 1
                continue
            }
            
            //장소
            if store == "장소 없음", trimmed.contains("점") {
                store = trimmed.trimmingCharacters(in: ["점"])
            }
            
            //결제 금액
            if trimmed.contains("결제금액"), i + 2 < lines.count {
                let priceLine = lines[i + 2].trimmingCharacters(in: .whitespaces)
                let numberOnly = priceLine.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
                if let amount = Int(numberOnly) {
                    totalAmount = amount
                }
            }
            
            i += 1
        }
        
        print("===== OCR 디버그 끝 =====")
        print("📆 주문날짜: \(orderdate)")
        print("🏪 매장명: \(store)")
        print("💰 결제 금액: \(totalAmount)")
        
        guard let imageData = image.jpegData(compressionQuality: 0.8) else { return nil }
        
        return ReceiptModel(photoData: ReceiptImageModel(data: imageData), shopname: store, date: orderdate, price: totalAmount)
    }
    
    func saveReceipt(using context: ModelContext) {
        guard let receipt = self.receipt else { return }
        context.insert(receipt)
        try? context.save()
        self.receipt = nil
        self.image = UIImage()
    }
    
    func deleteReceipt(at offsets: IndexSet, from receipts: [ReceiptModel], using context: ModelContext) {
        for index in offsets {
            let target = receipts[index]
            context.delete(target)
        }
        try? context.save()
    }
}
