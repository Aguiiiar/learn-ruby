class Pessoa 
  # @param [nome] String
  # @param [idade] Integer
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
