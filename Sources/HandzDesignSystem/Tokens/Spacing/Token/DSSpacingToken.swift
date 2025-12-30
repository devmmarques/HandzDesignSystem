//
//  DSSpacingToken.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

/// Tokens de espaçamento do Design System.
///
/// Os espaçamentos seguem uma escala progressiva e consistente,
/// pensada para layouts, componentes e hierarquia visual.
///
/// ❗️Evite usar valores numéricos diretos (ex: 8, 16).
/// Utilize sempre um `DSSpacingToken`.
///
/// Exemplo de uso:
/// ```swift
/// VStack(spacing: DSSpacing.value(.md)) {
///     Text("Título")
///     Text("Descrição")
/// }
/// ```
///
/// Ou via modifier:
/// ```swift
/// .padding(DSSpacing.value(.lg))
/// ```

public enum DSSpacingToken: CaseIterable {
    /// Nenhum espaçamento.
       ///
       /// Valor de referência no tema padrão: `0pt`
       case none

       /// Espaçamento extra-extra-extra pequeno.
       ///
       /// Usado para micro ajustes visuais.
       /// Valor de referência no tema padrão: `2pt`
       case xxxs

       /// Espaçamento extra-extra pequeno.
       ///
       /// Ideal para ícone + texto.
       /// Valor de referência no tema padrão: `4pt`
       case xxs

       /// Espaçamento extra pequeno.
       ///
       /// Usado em componentes compactos.
       /// Valor de referência no tema padrão: `8pt`
       case xs

       /// Espaçamento pequeno.
       ///
       /// Usado para elementos relacionados.
       /// Valor de referência no tema padrão: `12pt`
       case sm

       /// Espaçamento médio.
       ///
       /// Espaçamento base do Design System.
       /// Valor de referência no tema padrão: `16pt`
       case md

       /// Espaçamento grande.
       ///
       /// Usado para separar seções.
       /// Valor de referência no tema padrão: `24pt`
       case lg

       /// Espaçamento extra grande.
       ///
       /// Usado para layouts amplos.
       /// Valor de referência no tema padrão: `32pt`
       case xl

       /// Espaçamento extra-extra grande.
       ///
       /// Usado em hierarquia visual forte.
       /// Valor de referência no tema padrão: `40pt`
       case xxl

       /// Espaçamento extra-extra-extra grande.
       ///
       /// Usado para grandes separações.
       /// Valor de referência no tema padrão: `48pt`
       case xxxl
}
