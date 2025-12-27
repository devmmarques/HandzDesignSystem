//
//  DSTypography.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI

public enum DSTypography {

    public static var theme: DSTypographyTheme = DefaultTypographyTheme(
        font: .init(
            regular: { Font.custom("Inter-Regular", size: $0) },
            medium: { Font.custom("Inter-Medium", size: $0) },
            semibold: { Font.custom("Inter-SemiBold", size: $0) },
            bold: { Font.custom("Inter-Bold", size: $0) }
        )
    )

    public static func font(_ token: DSTypographyToken) -> Font {
        theme.font(for: token)
    }
}
