//
//  ButtonTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import SwiftUI

public protocol ButtonTheme {

    func backgroundColor(variant: DSButtonVariant, state: DSButtonState) -> Color

    func textColor(variant: DSButtonVariant, state: DSButtonState) -> Color

    func height(for variant: DSButtonVariant) -> CGFloat
    func radius(for variant: DSButtonVariant) -> DSRadiusToken
    func borderColor(variant: DSButtonVariant, state: DSButtonState) -> Color
}
