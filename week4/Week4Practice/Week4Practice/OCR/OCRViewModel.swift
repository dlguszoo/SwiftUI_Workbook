//
//  OCRViewModel.swift
//  Week4Practice
//
//  Created by 이현주 on 4/12/25.
//

import SwiftUI
import Vision

@Observable
class OCRViewModel: OCRImageHandling {
    var images: [UIImage] = []
    var recognizedText: String = ""
    
    func addImage(_ image: UIImage) {
        images.append(image)
        performOCR(on: image)
    }
    
    func removeImage(at index: Int) {
        guard images.indices.contains(index) else { return }
        images.remove(at: index)
    }
    
    func getImages() -> [UIImage] {
        images
    }
    
    private func performOCR(on image: UIImage) {
        guard let cgImage = image.cgImage else { return }
        
        let request = VNRecognizeTextRequest { [weak self] request, error in
            guard let results = request.results as? [VNRecognizedTextObservation] else { return }
            let recognizedStrings = results.compactMap { $0.topCandidates(1).first?.string }
            
            DispatchQueue.main.async {
                self?.recognizedText = recognizedStrings.joined(separator: "\n")
            }
        }
        
        request.recognitionLevel = .accurate
        request.usesLanguageCorrection = true
        request.recognitionLanguages = ["ko-KR", "en-US"]
        
        let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        
        DispatchQueue.global(qos: .userInitiated).async {
            try? handler.perform([request])
        }
    }
}
