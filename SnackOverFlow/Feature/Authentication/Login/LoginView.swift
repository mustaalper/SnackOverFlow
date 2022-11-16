//
//  LoginView.swift
//  SnackOverFlow
//
//  Created by MAA on 15.11.2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            ImageItems.Authentication.login.rawValue.image()
            Text(LocaleKeys.Login.welcomeBack.rawValue.locale())
                .font(.system(size: FontSizes.title1, weight: .semibold))
                .foregroundColor(.teflon)
            HTextIconFeild(hint: LocaleKeys.General.emailHint.rawValue.locale(), iconName: IconItems.mail)
            HTextSecureIconFeild(hint: LocaleKeys.General.passwordHint.rawValue.locale(), iconName: IconItems.lock)
                .padding(.top, PagePadding.All.normal.rawValue)
            Divider()
            NormalButton(onTap: {
                
            }, title: LocaleKeys.Login.createAccount.rawValue)
                .padding(.top, PagePadding.All.normal.rawValue)
            Text(LocaleKeys.Login.termsAndConditions.rawValue.locale())
                .environment(\.openURL, OpenURLAction(handler: { url in
                    print(url)
                    return .discarded
                }))
                .padding(.top, PagePadding.All.normal.rawValue)
                .font(.system(size: FontSizes.caption1, weight: .regular))
                .foregroundColor(.cornFlowerBlue)
                .tint(.cornFlowerBlue)
            Spacer()
        }.padding(.all, PagePadding.All.normal.rawValue)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

private struct HTextIconFeild: View {
    let hint: LocalizedStringKey
    let iconName: String
    var body: some View {
        HStack {
            iconName.image()
            TextField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}

private struct HTextSecureIconFeild: View {
    let hint: LocalizedStringKey
    let iconName: String
    var body: some View {
        HStack {
            iconName.image()
            SecureField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}
