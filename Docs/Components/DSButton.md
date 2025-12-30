# 🔘 DSButton

O `DSButton` é o componente padrão de botão do HandzDesignSystem.

---

## ✨ Variações

- `primary`
- `secondary`

---

## 🔄 Estados

- `normal`
- `disabled`
- `loading`

---

## 📐 Tamanhos

- `small`
- `medium`
- `large`

---

## 🧪 Exemplo de Uso

```swift
DSButton(
    "Confirmar",
    variant: .primary,
    size: .medium,
    state: .normal
) {
    print("Clicado")
}
```

---

## ♿ Acessibilidade

- `accessibilityLabel`
- `accessibilityHint`
- `accessibilityIdentifier`

---

## ✅ Boas Práticas

- Use loading para ações assíncronas
- Nunca desabilite manualmente sem refletir o estado real
- Sempre use tokens para cores e espaçamentos

---

## 🚧 Limitações

- Não suporta ícone (por enquanto)
