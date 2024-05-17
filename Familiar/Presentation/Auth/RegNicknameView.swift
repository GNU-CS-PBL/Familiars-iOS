//
//  RegNicknameView.swift
//  Familiars
//
//  Created by 준호 on 3/16/24.
//

import SwiftUI

// MARK: - State
struct RegNicknameView {
    let topPadding: CGFloat = Constants.Paddings.regTop
    let BottomPadding: CGFloat = Constants.Paddings.regBottom
    let horizontalPadding: CGFloat = Constants.Paddings.regHorizontal
    
    @FocusState private var isTextFieldFocused: Bool
    @State private var nickname: String = ""
    @State private var errorMessage: String?
    
    let mainText = "만나서 반가워요!\n어떻게 불러드리면 될까요?"
    let subText  = ""
}

// MARK: - Frame
extension RegNicknameView: View {
    var body: some View {
        VStack {
            RegExplnTitle(mainText: mainText, subText: subText)
            ErrorMessageText(errorMessage: errorMessage)
            nicknameField
                .padding(.top, 155)
            Spacer()
            nextButton /// Text 값이 들어있으면 버튼 활성화, 버튼 클릭시 닉네임 검증 함수 실행 된 후 다음 뷰로 넘어감.
        }
        .padding(.top, topPadding)
        .padding(.bottom, BottomPadding)
        .padding(.horizontal, horizontalPadding)
    }
}

// MARK: - View Detail
extension RegNicknameView {
    private var nicknameField: some View {
        StdTextField(text: $nickname, maxLength: 10, placeholder: "텍스트를 입력하세요")
                    .focused($isTextFieldFocused)
    }
    private var nextButton: some View {
        NavigationLink(destination: ContentView()) {
            Text("시작하기")
        }
            .buttonStyle(StandardButtonStyle())
    }
}

// MARK: - Function
extension RegNicknameView {
    private func validateNickname(nickname: String) {
        let regex = "^[가-힣A-Za-z0-9]+$"

        if nickname.isEmpty {
            // 닉네임이 비어있는 경우, 에러 메시지를 설정하지 않거나 사용자에게 입력을 요구하는 메시지를 설정할 수 있습니다.
            self.errorMessage = nil // 또는 "닉네임을 입력해주세요." 등의 메시지 설정
        } else if NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: nickname) {
            // 유효한 닉네임인 경우
            self.errorMessage = nil // 에러 메시지를 초기화
        } else {
            // 유효하지 않은 닉네임인 경우 (비어있지 않지만, 유효하지 않은 문자 포함)
            self.errorMessage = NicknameError.invalidCharacters.localizedDescription
        }
    }
}

// MARK: - Preview
#Preview {
    RegNicknameView()
}
