class Produto 
  attr_accessor :nome, :preco, :fabricante
end

celular = Produto.new

celular.fabricante = 'Xiamoi'
celular.nome = 'Redmi 9s Ultra'
celular.preco = 2450


puts "Fabricante: #{celular.fabricante}, nome: #{celular.nome}, preço: #{celular.preco}"