//
//  DynamicSize+GeometryProxy.swift
//  SnackOverFlow
//
//  Created by MAA on 4.10.2022.
//

import SwiftUI

extension GeometryProxy {
    /// Dynamic Height by device
    /// - Parameter height: Percent value
    /// - Returns: Calculated value for device height
    func dh(height: Double) -> Double {
        return size.height * height
    }
    
    /// Dynamic Widht by device
    /// - Parameter width: Percent value
    /// - Returns: Calculated value for device width
    func dw(width: Double) -> Double {
        return size.width * width
    }
}
