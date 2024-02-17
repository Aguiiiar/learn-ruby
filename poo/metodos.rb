# typed: true

def numeros_impares(min, max)
  (min..max).each do |numero|
    puts "O numero #{numero} é impar" if numero.odd?
  end
end

# numeros_impares(80, 100)

def media(elementos)
  elementos.sum / elementos.size
end

mediaFinal = media([10, 20])

# puts mediaFinal

def soma(x = 0, y = 0)
  x + y
end

# puts soma

# @param idade [Integer]
# @return [String]
def validarIdade(idade)
  if idade >= 18 and idade <= 50
    return "Adulto"
  end

  if idade >= 50
    "Idoso"
  end
end

puts validarIdade("")