//
//  ElecReceiptView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/16/25.
//

import SwiftUI
import PhotosUI
import SwiftData

struct ElecReceiptView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var receipts: [ReceiptModel]
    
    @State private var selectedItems: [PhotosPickerItem] = []
    @State private var showActionSheet = false
    @State private var showCamera = false
    @State private var showPhotosPicker = false
    @State private var showImageViewer = false
    @State private var selectedReceipt: ReceiptModel? = nil
    
    @StateObject private var viewModel = ReceiptViewModel()
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                CustomNavigationBar(title: "전자영수증", rightIcon: "plus", rightAction: {
                    showActionSheet = true
                })
                .background(Color.white)
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(title: Text("영수증을 어떻게 추가할까요?"),
                                buttons: [
                                    .cancel(Text("취소")),
                                    .default(
                                        Text("앨범에서 가져오기"),
                                        action: {
                                            showPhotosPicker = true
                                        }
                                    ),
                                    .default(
                                        Text("카메라로 촬영하기"),
                                        action: {
                                            showCamera = true
                                        }
                                    )
                                ]
                    )
                }
                .sheet(isPresented: $showCamera) {
                    CameraPicker { image in
                        viewModel.addImage(image) {
                            viewModel.saveReceipt(using: context)
                        }
                    }
                }
                .photosPicker(isPresented: $showPhotosPicker, selection: $selectedItems, maxSelectionCount: 1, matching: .images)
                .onChange(of: selectedItems) { oldItems, newItems in
                    for item in newItems {
                        Task {
                            if let data = try? await item.loadTransferable(type: Data.self),
                               let image = UIImage(data: data) {
                                viewModel.addImage(image) {
                                    viewModel.saveReceipt(using: context)
                                    selectedItems = []
                                }
                            }
                        }
                    }
                }
                
                totalTopView
                
                receiptListView
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white01)
            
            if showImageViewer {
                receiptImageViewer
                    .zIndex(1) // 가장 위에 보이게
            }
        }
    }
    
    private var receiptListView: some View {
        ScrollView {
            LazyVStack {
                ForEach(receipts) { receipt in
                    ReceiptCellView(
                        shopname: receipt.shopname,
                        date: receipt.date,
                        price: receipt.price
                    ) {
                        selectedReceipt = receipt
                        showImageViewer = true
                    }
                }
                //            .onDelete { offsets in
                //                viewModel.deleteReceipt(at: offsets, from: receipts, using: context)
                //            }
            }
            .padding(.horizontal, 18)
        }
    }
    
    private var receiptImageViewer: some View {
        ZStack {
            Color.black
                .opacity(0.8)
            
            if let selectedReceipt = selectedReceipt {
                if let image = UIImage(data: selectedReceipt.photoData.data) {
                    ZStack(alignment: .topTrailing) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width * 0.6)
                        
                        Button {
                            self.selectedReceipt = nil
                            showImageViewer = false
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .foregroundColor(.gray04)
                                .frame(width: 18, height: 18)
                                .padding(18)
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(edges: .all)
    }
    
    private var totalTopView: some View {
        HStack {
            let totalCount = receipts.count
            totalText(text1: "총 ", text2: "\(totalCount)건")
            
            Spacer()
            
            let totalPrice = receipts.reduce(0) { $0 + $1.price }.formatted()
            totalText(text1: "사용합계 ", text2: "\(totalPrice)원")
        }
        .padding(.horizontal, 18)
    }
    
    private func totalText(text1: String, text2: String) -> some View {
        Text(text1)
            .font(.PretendardRegular(size: 18))
            .foregroundStyle(Color.black)
        
        +
        
        Text(text2)
            .font(.PretendardSemiBold(size: 18))
            .foregroundStyle(Color.brown01)
    }
}

#Preview {
    ElecReceiptView()
}
