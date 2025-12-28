//
//  DefaultButtonTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI


public struct DefaultButtonTheme: ButtonTheme {

    public init() {}

    public func backgroundColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch (variant, state) {
        case (.primary, .normal):
            return DSColor.Fill.main
        case (.primary, .disabled):
            return DSColor.Fill.main.opacity(0.4)
        case (.primary, .loading):
            return DSColor.Fill.main

        case (.secondary, .normal):
            return DSColor.Fill.secondary
        case (.secondary, .disabled):
            return DSColor.Fill.secondary.opacity(0.4)
        case (.secondary, .loading):
            return DSColor.Fill.secondary
        }
    }

    public func textColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch variant {
        case .primary:
            return DSColor.Text.primary
        case .secondary:
            return DSColor.Text.primary
        }
    }

    public func height(for variant: DSButtonVariant) -> CGFloat {
        48
    }

    public func radius(for variant: DSButtonVariant) -> DSRadiusToken {
        .pill
    }
    
    public func borderColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch state {
        case .disabled:
            return DSColor.Border.defaultColor
        default:
            return DSColor.Fill.main
        }
    }
}
