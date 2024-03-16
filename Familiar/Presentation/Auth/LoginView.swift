//
//  LoginView.swift
//  Familiars
//
//  Created by 준호 on 3/15/24.
//

import SwiftUI
import KakaoSDKAuth
import KakaoSDKUser
import KakaoSDKCommon
//import AuthenticationServices

// MARK: - State
struct LoginView {
    let topPadding: CGFloat = 100
}

// MARK: - Frame
extension LoginView: View {
    var body: some View {
        VStack {
            appTitle
            appLogo
            Spacer()
            socialLoginButton
        }
        .padding(.top, topPadding)
    }
}

// MARK: - View Detail
extension LoginView {
    private var appTitle: some View {
        VStack {
            Text("투게더")
                .font(
                    Font.custom("Pretendard-Medium", size: 32)
                        .weight(.medium)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Constants.main200)
            Text("가족과 함께니까")
                .font(
                    Font.custom("Pretendard-Medium", size: 16)
                        .weight(.medium)
                )
                .multilineTextAlignment(.center)
        }
        .padding(.top, 100)
    }
    
    private var appLogo: some View {
        EmptyView()
    }
    
    private var socialLoginButton: some View {
        VStack(alignment: .center, spacing: 12) {
            /// 카카오
//            NavigationLink(destination: RegNicknameView(log: log, token: toToken)
//                           , isActive: $isActive) {
//                Button {
//                    if (UserApi.isKakaoTalkLoginAvailable()) {
//                        UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
//                            if let token = oauthToken?.accessToken {
//                                authVM.kakaoLogin(token: token)
//                                toToken = token
//                                log = "kakao"
//                            } else {
//                                
//                            }
//                        }
//                    } else {
//                        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
//                            if let token = oauthToken?.accessToken {
//                                authVM.kakaoLogin(token: token)
//                                toToken = token
//                                log = "kakao"
//                            }
//                            else {
//                                //                                isError = true
//                            }
//                        }
//                    }
//                } label : {
//                    Image("login-kakao")
//                        .resizable()
//                        .frame(width: 343,height: 48)
//                }
//            }
            /// 네이버
            /// 애플
//            SignInWithAppleButton(
//                onRequest: { request in
//                    request.requestedScopes = [.fullName, .email]
//                },
//                onCompletion: { result in
//                    switch result {
//                    case .success(let authResults):
//                        print("Apple Login Successful")
//                        switch authResults.credential{
//                        case let appleIDCredential as ASAuthorizationAppleIDCredential:
//                            let IdentityToken = String(data: appleIDCredential.identityToken!, encoding: .utf8)
//                            print(IdentityToken ?? "")
//                            authVM.appleLogin(token: IdentityToken!)
//                            toToken = IdentityToken ?? ""
//                            log = "apple"
//                            /// API 연결 위치
//                        default:
//                            break
//                        }
//                    case .failure(let error):
//                        print(error.localizedDescription)
//                        print("error")
//                    }
//                }
//            )
//            .frame(width : UIScreen.main.bounds.width * 0.9, height:50)
//            .cornerRadius(5)
        }
        .padding(.bottom, 80)// 수정 필요
    }
}
