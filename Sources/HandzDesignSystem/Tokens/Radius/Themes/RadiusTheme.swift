//
//  RadiusTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

public protocol RadiusTheme {
    func radius(for token: DSRadiusToken) -> CGFloat
}
