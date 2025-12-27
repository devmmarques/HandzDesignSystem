//
//  DefaultRadiusTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

public struct DefaultRadiusTheme: RadiusTheme {

    public init() {}

    public func radius(for token: DSRadiusToken) -> CGFloat {
        switch token {
        case .none: return 0
        case .xs:   return 2
        case .sm:   return 4
        case .md:   return 8
        case .lg:   return 12
        case .xl:   return 16
        case .pill: return 999
        }
    }
}
