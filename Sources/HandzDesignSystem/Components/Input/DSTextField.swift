//
//  DSTextField.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 29/12/25.
//
import SwiftUI

public struct DSTextField: View {

    // MARK: - Public API (essencial)
    private let label: String
    private let helperText: String?
    private let errorText: String?
    private let isEnabled: Bool
    
    @Binding private var text: String

    // MARK: - State
    @FocusState private var isFocused: Bool

    private var currentState: DSTextFieldState {
        if !isEnabled {
            return .disabled
        }
        if errorText != nil {
            return .error
        }
        if isFocused {
            return .focused
        }
        return .normal
    }


    // MARK: - Callbacks (opcionais)
    private var onChange: ((String) -> Void)?
    private var onFocusChange: ((Bool) -> Void)?
    private var onSubmit: (() -> Void)?

    // MARK: - Theme
    private let theme: TextFieldTheme
    

    // MARK: - Init
    public init(
        label: String,
        text: Binding<String>,
        helperText: String? = nil,
        errorText: String? = nil,
        isEnabled: Bool = true,
        theme: TextFieldTheme = DefaultTextFieldTheme()
    ) {
        self.label = label
        self._text = text
        self.helperText = helperText
        self.errorText = errorText
        self.isEnabled = isEnabled
        self.theme = theme
    }

    // MARK: - View
    public var body: some View {
        VStack(alignment: .leading, spacing: DSSpacing.value(.xs)) {

            labelView
            textFieldView
            helperOrErrorView
        }
        .opacity(isEnabled ? 1 : 0.6)
        .accessibilityElement(children: .contain)
    }
}

private extension DSTextField {

    var labelView: some View {
        Text(label)
            .font(DSTypography.font(.caption))
            .foregroundColor(
                theme.labelColor(state: currentState)
            )
    }
}


private extension DSTextField {

    var textFieldView: some View {
        TextField("", text: $text)
            .focused($isFocused)
            .disabled(!isEnabled)
            .font(DSTypography.font(.bodyMedium))
            .padding(.horizontal, DSSpacing.value(.sm))
            .padding(.vertical, DSSpacing.value(.xs))
            .background(
                theme.backgroundColor(state: currentState)
            )
            .overlay(border)
            .cornerRadius(DSRadius.value(.sm))
            .onChange(of: text) { newValue in
                onChange?(newValue)
            }
            .onChange(of: isFocused) { focused in
                onFocusChange?(focused)
            }
            .onSubmit {
                onSubmit?()
            }
            .accessibilityLabel(label)
            .accessibilityHint(helperText ?? "")
            .accessibilityValue(text)
    }
}
private extension DSTextField {

    var border: some View {
        RoundedRectangle(cornerRadius: DSRadius.value(.sm))
            .stroke(
                theme.borderColor(state: currentState),
                lineWidth: 1
            )
    }
}

private extension DSTextField {

    @ViewBuilder
    var helperOrErrorView: some View {
        if currentState == .error {
            if let errorText {
                Text(errorText)
                    .font(DSTypography.font(.caption))
                    .foregroundColor(
                        theme.helperColor(state: .error)
                    )
            } else if let helperText {
                Text(helperText)
                    .font(DSTypography.font(.caption))
                    .foregroundColor(
                        theme.helperColor(state: currentState)
                    )
            }
        }
    }
}

public extension DSTextField {

    func onChange(_ action: @escaping (String) -> Void) -> Self {
        var copy = self
        copy.onChange = action
        return copy
    }

    func onFocusChange(_ action: @escaping (Bool) -> Void) -> Self {
        var copy = self
        copy.onFocusChange = action
        return copy
    }

    func onSubmit(_ action: @escaping () -> Void) -> Self {
        var copy = self
        copy.onSubmit = action
        return copy
    }
}

