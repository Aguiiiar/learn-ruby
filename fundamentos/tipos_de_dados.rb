# 

puts 123.class
puts 5.55.class
puts "Ruby".class
puts ["Ruby", "Rails", "Sinatra"].class

symbol = :teste
puts symbol
puts "Posição na memória #{symbol.object_id}"

puts nil.class
hash = {
  curso: "Ruby completo",
  idioma: "pt-BR"
}

puts hash.class
puts hash[:curso]
puts hash[:idioma]
