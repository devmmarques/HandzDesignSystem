# ✍️ DSTypography

O `DSTypography` define fontes, pesos e tamanhos do Design System.

Centraliza:

- `Fonte`
- `Peso`
- `Altura de linha`
- `Hierarquia tipográfica`

---

## ✨ Tokens disponíveis
```swift
    .displayLarge
    .displayMedium
    .headingLarge
    .headingMedium
    .headingSmall
    .bodyLarge
    .bodyMedium
    .bodySmall
    .labelLarge
    .labelMedium
    .labelSmall
    .caption
```
---

## 🧪 Exemplo de Uso:

```swift

Text("Título")
    .font(DSTypography.font(.titleMedium))


```

---


## 🧪 Em componente:

```swift

.theme.font(for: size)

```

---


## ✅ Boas Práticas

- Use sempre DSTypography
- Nunca usar .system(size:)
- Mantenha hierarquia clara
- Use tokens semânticos

---
