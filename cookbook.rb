puts "Bem-vindo ao Cookbook, sua rede social de receitas"

receitas = []


while(true) do
  puts "Digite o nome da receita:"
  nome = gets.chomp()

  receitas << nome 

  puts
  # puts "Receita " + nome + " cadastrada com sucesso!"
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
  puts "========== Receitas ========== "
  # for em ruby:
  # for receita in receitas
  #   puts receita
  # end

  # for each em ruby:
  # receitas.each do |receita|
  #   puts receita
  # end
  puts receitas
  puts
end