//
//  RadiusTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

/// Contrato para definição de valores de raio de borda.
///
/// Permite que diferentes marcas, produtos ou contextos
/// forneçam valores distintos para os mesmos tokens semânticos.
///
/// Exemplo:
/// ```swift
/// DSRadius.theme = BrandARadiusTheme()
/// ```
public protocol RadiusTheme {

    /// Retorna o valor de raio correspondente a um token.
    ///
    /// - Parameter token: Token semântico de raio.
    /// - Returns: Valor de raio em pontos.
    func radius(for token: DSRadiusToken) -> CGFloat
}
