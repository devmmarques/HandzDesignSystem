# Boas Práticas

Este documento define as boas práticas obrigatórias para utilização do **HandzDesignSystem**.  
Seguir estas diretrizes garante consistência, escalabilidade, acessibilidade e suporte a múltiplas marcas.

---

## 1. Semântica antes da aparência

Sempre utilize **tokens semânticos** em vez de valores visuais diretos.

✅ Correto:
- `foregroundColor(DSColor.Fill.error)`
- `font(DSTypography.bodyMedium)`
- `padding(DSSpacing.md)`

❌ Evite:
- `foregroundColor(.red)`
- `font(.system(size: 14))`
- `padding(16)`


O código deve expressar intenção, não aparência.
---

## 2. Evite valores mágicos (Magic Numbers)

✅ Correto:
```swift
.padding(DSSpacing.sm)
.frame(height: theme.height(for: size))

```

❌ Evite:
```swift
.padding(DSSpacing.sm)
.frame(height: theme.height(for: size))

```
---

## 3. Utilize sempre Tokens do Design System

Todos os valores visuais devem vir dos tokens oficiais:

- DSColor

- DSTypography

- DSSpacing

- DSRadius

Nunca utilize valores diretos do SwiftUI quando existir um token equivalente.

---

## 4. Componentes devem encapsular regras visuais

Quem consome um componente não deve decidir aparência interna.

✅ Correto:
```swift

DSButton("Salvar", variant: .primary)


```

❌ Evite:
```swift

DSButton("Salvar")
    .background(Color.blue)

```
---

## 5. Componentes devem expor configuração, não duplicação

Evite criar múltiplos componentes para cada variação visual.

✅ Correto:
```swift

DSButton(
    "Confirmar",
    variant: .secondary,
    size: .medium,
    state: .normal
)

```

❌ Evite

- PrimaryButton

- SecondaryButton

---


## 6. stados devem ser explícitos

Estados devem ser controlados por propriedades claras.

Exemplos de estados:

- normal

- disabled

- loading

- error

Nunca inferir estado apenas por cor, opacidade ou estilo.

---

## 7. Multi-brand deve ser tratado via Theme

Nunca altere cores ou fontes diretamente no componente.

✅ Correto:
```swift

.foregroundColor(theme.textColor(state: state))

```

❌ Evite:
```swift

.foregroundColor(.blue)

```

---

## 8. Playground não é código de produção

Nunca altere cores ou fontes diretamente no componente.

O Playground serve para:

- Explorar tokens

- Simular estados

- Testar temas

- Validar comportamento visual

Código do Playground não deve ser copiado diretamente para produção.

---

## 9. Prefira evolução do Design System à customização excessiva

Nunca altere cores ou fontes diretamente no componente.

Se um componente precisa de muitas customizações externas:

- O token pode estar incompleto, ou

- O componente precisa evoluir

Evite adicionar parâmetros apenas para casos pontuais.

---

## 10. Consistência é prioridade

Antes de criar algo novo, verifique se:

- Já existe um token equivalente

- Já existe um componente adequado

- O problema pode ser resolvido via Theme

Consistência é mais importante do que flexibilidade excessiva.


---
