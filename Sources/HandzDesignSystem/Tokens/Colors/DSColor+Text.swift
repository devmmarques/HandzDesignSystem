//
//  DS.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI

@available(macOS 10.15, *)
public extension DSColor {

    enum Text {
        public static let primary = Color("color.text.primary", bundle: .module)
        public static let secondary = Color("color.text.secondary", bundle: .module)
        public static let disabled = Color("color.text.disabled", bundle: .module)
        public static let onFill = Color("color.text.onFill", bundle: .module)
        public static let inverse = Color("color.text.inverse", bundle: .module)
        
        public static let error = Color("color.text.error", bundle: .module)
        public static let tertiary = Color("color.text.tertiary", bundle: .module)
        
    }
}
