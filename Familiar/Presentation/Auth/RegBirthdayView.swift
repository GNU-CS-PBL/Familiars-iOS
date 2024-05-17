//
//  RegBirthdayView.swift
//  Familiars
//
//  Created by 준호 on 3/16/24.
//

import SwiftUI

// MARK: - State
struct RegBirthdayView {
    let topPadding: CGFloat = Constants.Paddings.regTop
    let BottomPadding: CGFloat = Constants.Paddings.regBottom
    let horizontalPadding: CGFloat = Constants.Paddings.regHorizontal
    
    @State var isActive = false
    
    let mainText = "테스터 님의 생일을\n알려주세요."
    let subText  = "방 구성원들에게 알려줄 수도 있어요!"
}

// MARK: - Frame
extension RegBirthdayView: View {
    var body: some View {
        VStack(spacing: 24) {
            RegExplnTitle(mainText: mainText, subText: subText)
//            nicknameField
            Spacer()
            nextButton
        }
        .padding(.top, topPadding)
        .padding(.bottom, BottomPadding)
        .padding(.horizontal, horizontalPadding)
    }
}

// MARK: - View Detail
extension RegBirthdayView {
    private var nextButton: some View {
        NavigationLink(destination: ContentView()) {
            Text("시작하기")
        }
            .buttonStyle(StandardButtonStyle())
    }
}

#Preview {
    RegBirthdayView()
}
