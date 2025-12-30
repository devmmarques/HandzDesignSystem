//
//  ButtonTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

public protocol ButtonTheme {

    // MARK: - Layout (Size)

    func height(for size: DSButtonSize) -> CGFloat
    func horizontalPadding(for size: DSButtonSize) -> DSSpacingToken
    func radius(for size: DSButtonSize) -> DSRadiusToken
    func font(for size: DSButtonSize) -> Font

    // MARK: - Appearance (Variant + State)

    func backgroundColor(variant: DSButtonVariant, state: DSButtonState) -> Color

    func textColor(variant: DSButtonVariant, state: DSButtonState) -> Color

    func borderColor(variant: DSButtonVariant) -> Color

    func borderWidth(variant: DSButtonVariant) -> CGFloat
}
