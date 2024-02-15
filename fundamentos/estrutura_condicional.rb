person = { name: "",age: 0 }

print("Digite seu nome: ")
person[:name] = gets.chomp.to_s

print("Digite sua idade: ")
person[:age] = gets.chomp.to_i

if person[:age] >= 50
  puts "#{person[:name]} é um idoso"
elsif person[:age] >= 18
  puts "#{person[:name]} é adulto" 
elsif person[:age] >= 13 or person[:age] < 18
  puts "#{person[:name]} é adolescente"
else
  puts "#{person[:name]} é uma criança"
end