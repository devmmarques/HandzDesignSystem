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
    let theme: ButtonTheme

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, DSSpacing.value(.sm))
            .padding(.horizontal, DSSpacing.value(.md))
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .overlay(border)
            .cornerRadius(8)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }

    private var backgroundColor: Color {
        switch variant {
        case .primary:
            return theme.backgroundColor(variant: .primary, state: state)
        case .secondary:
            return Color.white
        }
    }

    @ViewBuilder
    private var border: some View {
        if variant == .secondary {
            RoundedRectangle(cornerRadius: DSRadius.value(.md))
                .stroke(
                    theme.borderColor(variant: .secondary, state: state),
                    lineWidth: 1
                )
        }
    }
}

