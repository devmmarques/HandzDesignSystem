//
//  DSButtonStyle.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI
struct DSButtonStyle: ButtonStyle {

    let variant: DSButtonVariant
    let state: DSButtonState
    let size: DSButtonSize
    let theme: ButtonTheme

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, horizontalPadding)
            .frame(height: theme.height(for: size))
            .frame(maxWidth: .infinity)
            .background(background)
            .overlay(border)
            .cornerRadius(
                DSRadius.value(theme.radius(for: size))
            )
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}

private extension DSButtonStyle {

    var horizontalPadding: CGFloat {
        DSSpacing.value(theme.horizontalPadding(for: size))
    }

    var background: some View {
        RoundedRectangle(
            cornerRadius: DSRadius.value(theme.radius(for: size))
        )
        .fill(
            theme.backgroundColor(
                variant: variant,
                state: state
            )
        )
    }

    @ViewBuilder
    var border: some View {
        if theme.borderWidth(variant: variant) > 0 {
            RoundedRectangle(
                cornerRadius: DSRadius.value(theme.radius(for: size))
            )
            .stroke(
                theme.borderColor(variant: variant),
                lineWidth: theme.borderWidth(variant: variant)
            )
        }
    }
}


