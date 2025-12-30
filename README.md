# HandzDesignSystem

HandzDesignSystem é um Design System construído em **SwiftUI**, projetado para suportar **múltiplos produtos**, **múltiplas marcas (themes)** e **adoção por vários times** de forma escalável e consistente.

---

## 🎯 Objetivos do Design System

- Centralizar decisões visuais e comportamentais
- Garantir consistência entre produtos
- Facilitar manutenção e evolução
- Suportar múltiplas marcas (themes)
- Aumentar produtividade dos times

---

## 📦 Instalação (Swift Package Manager)

Adicione no `Package.swift` ou via Xcode:

```swift
.package(
    url: "https://github.com/devmmarques//HandzDesignSystem.git",
    from: "1.0.0"
)
```

Depois importe no projeto:

```swift
import HandzDesignSystem
```

---

## 🧱 Estrutura do Projeto

```
Sources/
└── HandzDesignSystem/
    ├── Tokens/
    ├── Themes/
    ├── Components/
    └── Foundation/
```

---

## 🎨 Tokens

Tokens representam valores atômicos do Design System.

- [Colors](Docs/Tokens/Colors.md)
- [Typography](Docs/Tokens/Typography.md)
- [Spacing](Docs/Tokens/Spacing.md)
- [Radius](Docs/Tokens/Radius.md)

---

## 🧩 Componentes

Componentes reutilizáveis construídos com base nos tokens.

- [DSButton](Docs/Components/DSButton.md)
- [DSTextField](Docs/Components/DSTextField.md)

---

## ♿ Acessibilidade

Todos os componentes seguem boas práticas de acessibilidade:

- VoiceOver
- Dynamic Type
- Estados descritivos

👉 [Guia de Acessibilidade](Docs/Guides/Accessibility.md)

---

## ✅ Boas Práticas

- Nunca usar valores mágicos
- Sempre utilizar tokens
- Preferir composição a herança
- Não acoplar regras de negócio

👉 [Boas Práticas](Docs/Guides/BestPractices.md)

---

## 🚧 Limitações Conhecidas

- Suporte apenas a SwiftUI
- iOS 15+
- Não inclui temas dinâmicos remotos (por enquanto)

---

## 🤝 Contribuição

- Toda mudança deve vir acompanhada de documentação
- Tokens não devem ser alterados sem versionamento
- Novos componentes precisam de Playground

---

## 📄 Licença

Uso interno — propriedade da empresa.
