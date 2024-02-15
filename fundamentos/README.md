# Fundamentos do Ruby

## Tipos de Dados

- Integer -> 0
- Float -> 0.00
- String -> ""
- Array -> []
- Hash -> {}
- Symbol -> :symbol

## Operadores matematicos

- Adição -> 1+1
- Subtração -> 2-3
- Multiplicação -> 2*2
- Resto -> 5%2

# Strings
- "ruby".upcase -> RUBY
- "RUBY".downcase -> ruby
- "ruby".reverse -> ybur
- "ruby".capitalize -> Ruby
- "Dev" << " ruby" -> Dev Ruby
- "Estude ruby".concat(" mais") -> Estude ruby mais
- puts "#{2 + 2}" -> 4

# Entrada e Saída

- gets -> entrada
- puts -> saida com quebra de linha
- print -> saida sem quebra de linha

# Estrutura condicional

```rb
  if person[:age] >= 50
    puts "#{person[:name]} é um idoso"
  elsif person[:age] >= 18
    puts "#{person[:name]} é adulto" 
  elsif person[:age] >= 13 or person[:age] < 18
    puts "#{person[:name]} é adolescente"
  else
    puts "#{person[:name]} é uma criança"
  end
```