//
//  DSTypographyScale.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import Foundation

public struct DSTypographyScale {

    public let displayLarge: CGFloat
    public let displayMedium: CGFloat

    public let headingLarge: CGFloat
    public let headingMedium: CGFloat
    public let headingSmall: CGFloat

    public let bodyLarge: CGFloat
    public let bodyMedium: CGFloat
    public let bodySmall: CGFloat

    public let labelLarge: CGFloat
    public let labelMedium: CGFloat
    public let labelSmall: CGFloat

    public let caption: CGFloat

    public init(
        displayLarge: CGFloat = 32,
        displayMedium: CGFloat = 28,
        headingLarge: CGFloat = 24,
        headingMedium: CGFloat = 20,
        headingSmall: CGFloat = 18,
        bodyLarge: CGFloat = 16,
        bodyMedium: CGFloat = 14,
        bodySmall: CGFloat = 12,
        labelLarge: CGFloat = 14,
        labelMedium: CGFloat = 12,
        labelSmall: CGFloat = 10,
        caption: CGFloat = 10
    ) {
        self.displayLarge = displayLarge
        self.displayMedium = displayMedium
        self.headingLarge = headingLarge
        self.headingMedium = headingMedium
        self.headingSmall = headingSmall
        self.bodyLarge = bodyLarge
        self.bodyMedium = bodyMedium
        self.bodySmall = bodySmall
        self.labelLarge = labelLarge
        self.labelMedium = labelMedium
        self.labelSmall = labelSmall
        self.caption = caption
    }
}
