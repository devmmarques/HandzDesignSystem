# 📝 DSTextField

O `DSTextField` é o componente padrão de entrada de texto do Design System.

---

## ✨ Recursos

- Label
- Helper text
- Mensagem de erro
- Estados visuais
- Callbacks de digitação

---

## 🔄 Estados

- `normal`
- `focused`
- `error`
- `disabled`

---

## 🧪 Exemplo de Uso

```swift
DSTextField(
    label: "Email",
    text: $email,
    helperText: "Informe seu email",
    state: .normal,
    onTextChange: { value in
        print(value)
    }
)
```

---

## 🔁 Callbacks

- `onTextChange`
- `onFocusChange`
- `onSubmit`

---

## ♿ Acessibilidade

- Labels corretamente associados
- Suporte a VoiceOver
- Estados narráveis

---

## ✅ Boas Práticas

- Use helper text para orientação
- Use erro apenas após validação
- Não sobrecarregue o input

---

## 🚧 Limitações

- Não suporta máscara nativa
