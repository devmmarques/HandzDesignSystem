//
//  DefaultRadiusTheme.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

/// Tema padrão de raios do Design System.
///
/// Baseado em um sistema progressivo de 8pt,
/// equilibrando estética moderna e legibilidade.
///
/// Este tema é utilizado como fallback caso nenhum
/// tema customizado seja definido.
public struct DefaultRadiusTheme: RadiusTheme {

    public init() {}

    public func radius(for token: DSRadiusToken) -> CGFloat {
        switch token {
        case .none: return 0
        case .xxs:  return 2
        case .xs:   return 4
        case .sm:   return 6
        case .md:   return 8
        case .lg:   return 12
        case .xl:   return 16
        case .xxl:  return 24
        case .pill: return 999
        }
    }
}
