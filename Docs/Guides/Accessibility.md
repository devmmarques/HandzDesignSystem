# ♿ Acessibilidade & Boas Práticas  
## HandzDesignSystem

Este documento descreve os **princípios de acessibilidade**, **boas práticas** e **padrões obrigatórios** para o uso dos componentes do **HandzDesignSystem**.

O objetivo é garantir que todas as aplicações construídas com o Design System sejam:

- Acessíveis
- Inclusivas
- Consistentes
- Escaláveis
- Fáceis de manter

---

## 🎯 Objetivo

Garantir que os componentes do HandzDesignSystem:

- Sigam as diretrizes **WCAG 2.1**
- Funcionem corretamente com leitores de tela
- Sejam utilizáveis por teclado e toque
- Tenham contraste e hierarquia visual adequados
- Utilizem apenas tokens do Design System

---

## 📐 Princípios Fundamentais

### 1. Semântica antes da aparência

Os componentes devem expressar **intenção**, não apenas aparência visual.

✅ Correto:
- `foregroundColor(DSColor.Fill.error)`
- `font(DSTypography.bodyMedium)`
- `padding(DSSpacing.md)`

❌ Evite:
- `foregroundColor(.red)`
- `font(.system(size: 14))`
- `padding(16)`

---

### 2. Uso obrigatório de Tokens

Todo componente deve utilizar exclusivamente tokens do Design System.

| Categoria | Token |
|--------|------|
| Cores | `DSColor` |
| Espaçamento | `DSSpacing` |
| Radius | `DSRadius` |
| Tipografia | `DSTypography` |

---

### 3. Componentes são agnósticos de marca

Componentes **não conhecem cores específicas**.

Toda variação visual deve ser aplicada via:
- `Theme`
- `Variant`
- `State`

Isso permite:
- Multi-brand
- White label
- Evolução sem refatorações

---

## 🎨 Acessibilidade Visual

### Contraste de cores

Os componentes devem respeitar os níveis mínimos de contraste:

- **Texto normal:** 4.5:1
- **Texto grande:** 3:1

Tokens como:
- `surface`
- `primary`
- `error`

já são definidos para cumprir esses requisitos.

---

### Estados visuais obrigatórios

Todo componente interativo deve apresentar claramente os estados:

- Normal
- Focus
- Disabled
- Error
- Loading

❌ Nunca utilize apenas cor para indicar estado  
✅ Combine cor, forma e feedback visual

---

## 🔍 Foco e Navegação

### Foco visível

Todo componente focável deve exibir foco visível.

Recomendação:

```swift
.overlay(
    RoundedRectangle(cornerRadius: ...)
        .stroke(DSColor.focus, lineWidth: 2)
)
