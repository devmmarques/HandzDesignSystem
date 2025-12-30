//
//  DSRadiusToken.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

/// Tokens de raio de borda utilizados no Design System.
///
/// Os tokens de raio representam a **personalidade visual** dos componentes,
/// evitando o uso de valores mágicos (`cornerRadius(8)`) e garantindo consistência
/// entre produtos, marcas e plataformas.
///
/// Os valores concretos são definidos pelo `RadiusTheme`.
///
/// ## Boas práticas
/// - Utilize sempre tokens semânticos (`.md`, `.lg`, etc)
/// - Evite criar novos tokens sem alinhamento com Design
/// - Prefira tokens ao invés de valores diretos
///
public enum DSRadiusToken: CaseIterable {

    /// Sem arredondamento.
    ///
    /// Uso comum:
    /// - Dividers
    /// - Tabelas
    /// - Listas densas
    case none

    /// Raio extremamente sutil.
    ///
    /// Uso comum:
    /// - Inputs compactos
    /// - Elementos densos
    case xxs

    /// Raio pequeno.
    ///
    /// Uso comum:
    /// - Chips
    /// - Badges
    case xs

    /// Raio médio-pequeno.
    ///
    /// Uso comum:
    /// - Botões secundários
    /// - Inputs padrão
    case sm

    /// Raio médio.
    ///
    /// Uso comum:
    /// - Cards padrão
    /// - Containers
    case md

    /// Raio grande.
    ///
    /// Uso comum:
    /// - Modais
    /// - Cards destacados
    case lg

    /// Raio extra grande.
    ///
    /// Uso comum:
    /// - Bottom sheets
    /// - Superfícies grandes
    case xl

    /// Raio extremamente grande.
    ///
    /// Uso comum:
    /// - Hero cards
    /// - Containers de destaque máximo
    case xxl

    /// Raio totalmente arredondado.
    ///
    /// Representa componentes em formato de cápsula.
    ///
    /// Uso comum:
    /// - Botões pill
    /// - Tags
    /// - Chips arredondados
    case pill
}
