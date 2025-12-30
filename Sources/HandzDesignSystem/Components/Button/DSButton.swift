//
//  DSButton.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

public struct DSButton: View {

    private let title: String
    private let variant: DSButtonVariant
    private let state: DSButtonState
    private let size: DSButtonSize
    private let action: () -> Void
    private let accessibilityIdentifier: String?
    private let accessibilityHint: String?

    private let theme: ButtonTheme

    public init(
        _ title: String,
        size: DSButtonSize = .medium,
        variant: DSButtonVariant = .primary,
        state: DSButtonState = .normal,
        accessibilityIdentifier: String? = nil,
        accessibilityHint: String? = nil,
        theme: ButtonTheme = DefaultButtonTheme(),
        action: @escaping () -> Void
    ) {
        self.title = title
        self.size = size
        self.variant = variant
        self.state = state
        self.accessibilityIdentifier = accessibilityIdentifier
        self.accessibilityHint = accessibilityHint
        self.theme = theme
        self.action = action
    }

    public var body: some View {
        var button = Button {
            if state == .normal {
                action()
            }
        } label: {
            buttonLabel
        }
        .buttonStyle(
            DSButtonStyle(
                variant: variant,
                state: state,
                size: size,
                theme: theme
            )
        )
        .disabled(state == .disabled || state == .loading)
        .accessibilityLabel(title)
        .accessibilityHint(accessibilityHint ?? accessibilityHintCore)
        .accessibilityAddTraits(.isButton)
        
        if let accessibilityIdentifier = accessibilityIdentifier {
            button = button.accessibilityIdentifier(accessibilityIdentifier)
        }
        return button
    }
    
    private var buttonLabel: some View {
        ZStack {
            if state == .loading {
                ProgressView()
                    .progressViewStyle(.circular)
                    .tint(theme.textColor(variant: variant, state: state))
            } else {
                Text(title)
                    .font(DSTypography.font(.bodyMedium))
                    .tint(theme.textColor(variant: variant, state: state))
                    
            }
        }
        .frame(maxWidth: .infinity,
               minHeight: theme.height(for: size),
               maxHeight: theme.height(for: size))
        .padding(.horizontal, DSSpacing.value(
            theme.horizontalPadding(for: size)
        ))
        .foregroundColor(
            theme.textColor(variant: variant, state: state)
        )
    }

    private var accessibilityHintCore: String {
        switch state {
        case .disabled:
            return "Botão desabilitado"
        case .loading:
            return "Carregando"
        default:
            return ""
        }
    }
}
