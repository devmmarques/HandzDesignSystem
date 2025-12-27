//
//  DefaultTypographyTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI

public struct DefaultTypographyTheme: DSTypographyTheme {

    public let scale: DSTypographyScale
    public let font: DSFontDescriptor

    public init(
        scale: DSTypographyScale = .init(),
        font: DSFontDescriptor
    ) {
        self.scale = scale
        self.font = font
    }

    public func font(for token: DSTypographyToken) -> Font {
        switch token {

        case .displayLarge:
            return font.bold(scale.displayLarge)

        case .displayMedium:
            return font.bold(scale.displayMedium)

        case .headingLarge:
            return font.semibold(scale.headingLarge)

        case .headingMedium:
            return font.semibold(scale.headingMedium)

        case .headingSmall:
            return font.semibold(scale.headingSmall)

        case .bodyLarge:
            return font.regular(scale.bodyLarge)

        case .bodyMedium:
            return font.regular(scale.bodyMedium)

        case .bodySmall:
            return font.regular(scale.bodySmall)

        case .labelLarge:
            return font.medium(scale.labelLarge)

        case .labelMedium:
            return font.medium(scale.labelMedium)

        case .labelSmall:
            return font.medium(scale.labelSmall)

        case .caption:
            return font.regular(scale.caption)
        }
    }
}
