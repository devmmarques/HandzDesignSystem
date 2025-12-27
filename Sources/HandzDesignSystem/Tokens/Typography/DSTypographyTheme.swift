//
//  DSTypographyTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI

public protocol DSTypographyTheme {

    var scale: DSTypographyScale { get }
    var font: DSFontDescriptor { get }

    func font(for token: DSTypographyToken) -> Font
}
