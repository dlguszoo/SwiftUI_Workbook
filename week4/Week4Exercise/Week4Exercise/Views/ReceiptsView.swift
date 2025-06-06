//
//  ReceiptsView.swift
//  Week4Exercise
//
//  Created by 이현주 on 4/12/25.
//

import SwiftUI

struct ReceiptsView: View {
    
    @Bindable var viewModel: ReceiptsViewModel = .init()
    
    var body: some View {
        VStack(spacing: 42) {
            HStack {
                ForEach(ReceiptSegment.allCases, id: \.id) { segment in
                    topSegment(segment: segment)
                }
            }
            
            tabView
        }
        .frame(maxWidth: 337, maxHeight: .infinity)
    }
    
    @ViewBuilder
    func topSegment(segment: ReceiptSegment) -> some View {
        VStack(spacing: 0) {
            Text(segment.title)
                .foregroundStyle(Color.black)
                .font(.system(size: 40))
                .onTapGesture {
                    viewModel.selectedSegment = segment
                }
            if viewModel.selectedSegment == segment {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 116, height: 2)
            }
        }
        .frame(maxWidth: .infinity)
        
        if segment == .first {
            Spacer()
        }
    }
    
    private var tabView: some View {
        TabView(selection: $viewModel.selectedSegment, content: {
            ForEach(ReceiptSegment.allCases, id: \.id) { segment in
                VStack(spacing: 10) {
                    Image(segment.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 490)
                    
                    if viewModel.selectedSegment == segment {
                        if let receipt = viewModel.currentReceipt {
                            ReceiptInfoView(receipt: receipt)
                        } else {
                            ProgressView("OCR 처리 중...")
                        }
                    }
                }
                .tag(segment)
                .task { //세그멘트 탭 화면이 등장할 때 OCR 추출이 돼야 하기 때문에 task로 작성
                    viewModel.startOCR(segment)
                }
            }
        })
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    ReceiptsView()
}
