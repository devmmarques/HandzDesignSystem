//
//  DefaultTextFieldTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 29/12/25.
//

import SwiftUI

public struct DefaultTextFieldTheme: TextFieldTheme {

    public init() {}

    public func backgroundColor(state: DSTextFieldState) -> Color {
        switch state {
        case .disabled:
            return DSColor.Fill.disabled
        default:
            return DSColor.Fill.neutralLowest
        }
    }

    public func borderColor(state: DSTextFieldState) -> Color {
        switch state {
        case .normal:
            return DSColor.Border.standard
        case .focused:
            return DSColor.Border.defaultColor
        case .error:
            return DSColor.Border.error
        case .disabled:
            return DSColor.Border.disabled
        }
    }

    public func borderWidth(state: DSTextFieldState) -> CGFloat {
        state == .focused ? 2 : 1
    }

    public func labelColor(state: DSTextFieldState) -> Color {
        switch state {
        case .normal:
            return DSColor.Text.primary
        case .focused:
            return DSColor.Text.primary
        case .error:
            return DSColor.Text.error
        case .disabled:
            return DSColor.Text.disabled
        }
    }

    public func textColor(state: DSTextFieldState) -> Color {
        state == .disabled
            ? DSColor.Text.disabled
            : DSColor.Text.primary
    }

    public func helperColor(state: DSTextFieldState) -> Color {
        switch state {
        case .error:
            return DSColor.Text.error
        default:
            return DSColor.Text.primary
        }
    }

    public func radius() -> DSRadiusToken {
        .md
    }

    public func height() -> CGFloat {
        44
    }
}

