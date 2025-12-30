# 🔵 DSRadius

O `DSRadius` define os raios de borda padrão usados em todo o Design System.

Ele evita:

- `Inconsistência visual`
- `Valores mágicos (cornerRadius(7))`

---

## ✨ Tokens disponíveis
```swift
.none
.xxs
.xs
.sm
.md
.lg
.xl
.xxl
.pill
```
---



## 🧪 Exemplo de Uso:

```swift

RoundedRectangle(cornerRadius: DSRadius.value(.md))

```

---


## 🧪 Exemplo de Uso em Componente:

```swift

.cornerRadius(DSRadius.value(theme.radius()))

```

---


## ✅ Boas Práticas

- Use apenas tokens
- Nunca usar valores fixos
- Componentes pequenos → .sm
- Componentes principais → .md ou .lg

---
