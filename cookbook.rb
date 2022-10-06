puts "Bem-vindo ao Cookbook, sua rede social de receitas"

receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()

while(opcao != 3) do
  # opção 1:
  if(opcao == 1)
    puts "Digite o nome da receita:"
    nome = gets.chomp()
    receitas << nome 
    puts
    # puts "Receita " + nome + " cadastrada com sucesso!"
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
  

    # opção 2:
    elsif(opcao == 2)
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
    else
      puts "Opção inválida!"
  end
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"

  print "Escolha uma opção: "
  opcao = gets.to_i()
end

puts "Obrigado por usar o Cookbook!"