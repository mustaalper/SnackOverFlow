//
//  TextFieldModifier.swift
//  SnackOverFlow
//
//  Created by MAA on 16.11.2022.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
            .foregroundColor(Color.karl)
    }
    
}
