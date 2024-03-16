//
//  RegEndingView.swift
//  Familiars
//
//  Created by 준호 on 3/16/24.
//

import SwiftUI


// MARK: - State
struct RegEndingView {
    let topPadding: CGFloat = Constants.Paddings.regTop
    let BottomPadding: CGFloat = Constants.Paddings.regBottom
    let horizontalPadding: CGFloat = Constants.Paddings.regHorizontal
}

// MARK: - Frame
extension RegEndingView: View {
    var body: some View {
        VStack(spacing: 24) {
            icon
            explnBody
            Spacer()
            startButton
        }
        .padding(.top, topPadding)
        .padding(.bottom, BottomPadding)
        .padding(.horizontal, horizontalPadding)
    }
}

// MARK: - View Detail
extension RegEndingView {
    private var icon: some View {
        Image("popper")
            .resizable()
            .frame(width: 40, height: 40)
    }
    
    private var explnBody: some View {
        VStack(spacing: 12) {
            Text("준호님\n환영합니다!").font(.title).bold()
                .multilineTextAlignment(.center)
            
            Text("방에 가입하여 구성원들과 함께\n활동을 진행해 보세요!").foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
    
    private var startButton: some View {
        NavigationLink(destination: ContentView()) {
            Text("시작하기")
        }
            .buttonStyle(StandardButtonStyle())
    }
}

// MARK: - Preview
#Preview {
    RegEndingView()
}
