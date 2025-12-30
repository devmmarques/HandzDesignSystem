# 📐 DSSpacing

O `DSSpacing` define os espaçamentos oficiais do sistema.

Garante:

- `Layout consistente`
- `Ritmo visual equilibrado`
- `Facilidade de manutenção`

---

## ✨ Tokens disponíveis
```swift
.none
.xxxs
.xxs
.xs
.sm
.md
.lg
.xl
.xxl
.xxxl
```
---



## 🧪 Exemplo de Uso:

```swift

VStack(spacing: DSSpacing.value(.md)) {
    Text("Title")
    Text("Description")
}

```

---


## 🧪 Padding:

```swift

.padding(.horizontal, DSSpacing.value(.md))

```

---


## ✅ Boas Práticas

- Use apenas tokens
- Nunca usar .padding(16) diretamente
- Use .xs/.sm para micro espaçamentos
- Use .lg/.xl para seções

---
