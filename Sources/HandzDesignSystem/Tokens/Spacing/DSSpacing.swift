//
//  DSSpacing.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//
import Foundation

public enum DSSpacing {

    public static var theme: DSSpacingTheme = DefaultSpacingTheme()

    public static func value(_ token: DSSpacingToken) -> CGFloat {
        theme.value(for: token)
    }
}
