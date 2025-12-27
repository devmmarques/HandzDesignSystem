//
//  DSSpacingScale.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

public struct DSSpacingScale {

    public let none: CGFloat
    public let xxxs: CGFloat
    public let xxs: CGFloat
    public let xs: CGFloat
    public let sm: CGFloat
    public let md: CGFloat
    public let lg: CGFloat
    public let xl: CGFloat
    public let xxl: CGFloat
    public let xxxl: CGFloat

    public init(
        none: CGFloat = 0,
        xxxs: CGFloat = 2,
        xxs: CGFloat = 4,
        xs: CGFloat = 8,
        sm: CGFloat = 12,
        md: CGFloat = 16,
        lg: CGFloat = 24,
        xl: CGFloat = 32,
        xxl: CGFloat = 40,
        xxxl: CGFloat = 48
    ) {
        self.none = none
        self.xxxs = xxxs
        self.xxs = xxs
        self.xs = xs
        self.sm = sm
        self.md = md
        self.lg = lg
        self.xl = xl
        self.xxl = xxl
        self.xxxl = xxxl
    }
}
