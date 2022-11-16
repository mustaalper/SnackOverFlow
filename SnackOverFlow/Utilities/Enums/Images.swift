//
//  Images.swift
//  SnackOverFlow
//
//  Created by MAA on 4.10.2022.
//

import Foundation
import SwiftUI

enum Images: String {
    case juice = "img_juice"
}

struct ImageItems {
    
    enum Authentication: String {
    case login = "volcano"
    }
}

extension String {
    
    /// String path to image
    /// - Returns: realeted image from Image asset
    func image() -> Image {
        return Image(self)
    }
}
