//
//  DSRadius.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import Foundation

/// Fachada pública para acesso aos tokens de raio de borda.
///
/// `DSRadius` é o ponto de entrada oficial para obtenção
/// dos valores de raio dentro do Design System.
///
/// Exemplo de uso:
/// ```swift
/// RoundedRectangle(cornerRadius: DSRadius.value(.md))
/// ```
public enum DSRadius {

    /// Tema atual de raio.
    ///
    /// Pode ser substituído para suportar múltiplas marcas
    /// ou variações de produto.
    public static var theme: RadiusTheme = DefaultRadiusTheme()

    /// Retorna o valor de raio para um token específico.
    ///
    /// - Parameter token: Token semântico de raio.
    /// - Returns: Valor de raio em pontos.
    public static func value(_ token: DSRadiusToken) -> CGFloat {
        theme.radius(for: token)
    }
}
