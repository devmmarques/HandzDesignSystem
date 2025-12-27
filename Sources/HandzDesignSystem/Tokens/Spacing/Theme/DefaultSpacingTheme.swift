//
//  DefaultSpacingTheme.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

public struct DefaultSpacingTheme: DSSpacingTheme {

    private let scale: DSSpacingScale

    public init(scale: DSSpacingScale = .init()) {
        self.scale = scale
    }

    public func value(for token: DSSpacingToken) -> CGFloat {
        switch token {
        case .none: return scale.none
        case .xxxs: return scale.xxxs
        case .xxs: return scale.xxs
        case .xs: return scale.xs
        case .sm: return scale.sm
        case .md: return scale.md
        case .lg: return scale.lg
        case .xl: return scale.xl
        case .xxl: return scale.xxl
        case .xxxl: return scale.xxxl
        }
    }
}
