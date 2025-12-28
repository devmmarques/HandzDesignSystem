//
//  DSColor+Border.swift.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI

@available(macOS 10.15, *)
public extension DSColor {

    enum Border {
        public static let subtle = Color("color.border.subtle", bundle: .module)
        public static let defaultColor = Color("color.border.default", bundle: .module)
        public static let strong = Color("color.border.strong", bundle: .module)
        public static let focus = Color("color.border.focus", bundle: .module)
    }
}
