//
//  DSRadius.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import Foundation

public enum DSRadius {

    public static var theme: RadiusTheme = DefaultRadiusTheme()

    public static func value(_ token: DSRadiusToken) -> CGFloat {
        theme.radius(for: token)
    }
}
