# 🎨 DSColors

O `DSColor` centraliza todas as cores do Design System, evitando o uso de cores hardcoded nos componentes.

Ele permite:

- `Padronização visual`
- `Suporte a múltiplos temas (ex: Handz, Partner)`
- `Fácil manutenção e rebranding`

---

## ✨ Estrutura conceitual

As cores são organizadas por intenção, não por valor visual:

- `Fill`
- `Border`
- `Icon`
- `Opacity`
- `Text`

---

## 🧪 Exemplo conceitual:

```swift
DSColor.Text.primary
DSColor.Fill.main
DSColor.Icon.primary
DSColor.Opacity.medium
DSColor.Text.primary
```

---

## 🧪 Exemplo de Uso:

```swift
Text("Hello")
    .foregroundColor(DSColor.Text.primary)
    .background(DSColor.Text.secondary)

```

---


## 🧪 Exemplo de Uso em Componente:

```swift
theme.textColor(state: .normal)
theme.backgroundColor(state: .error)

```

---


## ✅ Boas Práticas

- Use sempre `DSColor`
- Nunca use Color.red, Color.black, Color(hex:) diretamente
- Pense em intenção, não em aparência
- Permite troca de tema sem refatoração

---
