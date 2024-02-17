# Orientação a Objeto

## Métodos

- Definição
```rb
  def numeros_impares
    (0..10).each do |numero|
      puts "O numero #{numero} é impar" if numero.odd?
    end
  end

  numeros_impares
```

- Parametros
```rb
  def media(elementos)
    elementos.sum / elementos.size
  end

  mediaFinal = media([10, 20])
```


- Parametros com valores padroes
```rb
  def soma(x = 0, y = 0)
    x + y
  end

  puts soma
```
- Retorno com ou sem **return**
```rb 
# O ultimo if não precisa de return pois o ruby entende que é o ponto final do código e já faz o retorno.

  def validarIdade(idade)
    if idade >= 18 and idade <= 50
      return "Adulto"
    end

    if idade >= 50
      "Idoso"
    end
  end
```
- Classes
```rb
class Cachorro
  def latir
   puts 'Latindo...'
  end
end

class Gato 
  def miar
    puts 'Miando...' 
  end
end

Cachorro.new().latir
Gato.new().miar
```

- Método construtor
```rb
class Pessoa 
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def mostrar_informacoes
    puts "#{@nome} tem #{@idade} anos"
  end
end

pessoa = Pessoa.new('Max', 21)
pessoa.mostrar_informacoes
```