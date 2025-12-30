//
//  TextFieldTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 29/12/25.
//
import SwiftUI

public protocol TextFieldTheme {

    func backgroundColor(state: DSTextFieldState) -> Color
    func borderColor(state: DSTextFieldState) -> Color
    func borderWidth(state: DSTextFieldState) -> CGFloat

    func labelColor(state: DSTextFieldState) -> Color
    func textColor(state: DSTextFieldState) -> Color
    func helperColor(state: DSTextFieldState) -> Color

    func radius() -> DSRadiusToken
    func height() -> CGFloat
}
