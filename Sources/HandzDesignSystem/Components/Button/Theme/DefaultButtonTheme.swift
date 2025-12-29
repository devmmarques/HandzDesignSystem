//
//  DefaultButtonTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

public struct DefaultButtonTheme: ButtonTheme {
    

    public init() {}

    // MARK: - Layout

    public func height(for size: DSButtonSize) -> CGFloat {
        switch size {
        case .small: return 36
        case .medium: return 48
        case .large: return 56
        }
    }

    public func horizontalPadding(for size: DSButtonSize) -> DSSpacingToken {
        switch size {
        case .small: return .sm
        case .medium: return .md
        case .large: return .lg
        }
    }

    public func radius(for size: DSButtonSize) -> DSRadiusToken {
        switch size {
        case .small: return .sm
        case .medium: return .md
        case .large: return .lg
        }
    }

    public func font(for size: DSButtonSize) -> Font {
        switch size {
        case .small: return DSTypography.font(.bodySmall)
        case .medium: return DSTypography.font(.bodyMedium)
        case .large: return DSTypography.font(.bodyLarge)
        }
    }

    // MARK: - Appearance

    public func backgroundColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch (variant, state) {
        case (.primary, .normal):
            return DSColor.Fill.main
        case (.secondary, .normal):
            return .clear
        case (.secondary, .loading):
            return .clear
        case (_, .disabled):
            return DSColor.Fill.disabled
        default:
            return DSColor.Fill.main.opacity(0.8)
        }
    }

    public func textColor(variant: DSButtonVariant, state: DSButtonState) -> Color {
        switch (variant, state) {
        case (.primary, _):
            return DSColor.Text.primary
        case (.secondary, _):
            return DSColor.Text.secondary
        }
    }

    public func borderColor(variant: DSButtonVariant) -> Color {
        switch variant {
        case .secondary:
            return DSColor.Fill.main
        default:
            return .clear
        }
    }

    public func borderWidth(variant: DSButtonVariant) -> CGFloat {
        variant == .secondary ? 1 : 0
    }
}

