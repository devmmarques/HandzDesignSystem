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
        public static let primary = Color("color.text.primary", bundle: .main)
        public static let secondary = Color("color.text.secondary", bundle: .main)
        public static let disabled = Color("color.text.disabled", bundle: .main)
        public static let onFill = Color("color.text.onFill", bundle: .main)
        public static let inverse = Color("color.text.inverse", bundle: .main)
    }
}
