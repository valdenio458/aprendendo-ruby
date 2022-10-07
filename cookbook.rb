def bem_vindo()
  puts "Bem-vindo ao Cookbook, sua rede social de receitas!"
end

def menu()
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"

  print "Escolha uma opção: "
  return gets.to_i() # esse return é opcional. Ruby retorna a última linha do método.
end

def inserir_receita()
  puts "Digite o nome da receita:"
  nome = gets.chomp()
  puts "Digite o tipo da receita"
  tipo = gets.chomp()
  # hash:
  puts 
  # puts "Receita " + nome + " cadastrada com sucesso!"
  puts "Receita #{nome} cadastrada com sucesso!"
  puts
  return {nome: nome, tipo: tipo}
end

def imprimir_receitas(receitas)
  puts "========== Receitas cadastradas ========== "
    # for em ruby:
    # for receita in receitas
    #   puts receita
    # end

    # for each em ruby:
    # receitas.each do |receita|
    #   puts receita
    # end
  receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts
end

bem_vindo()

receitas = []

opcao = menu()

while(opcao != 3) do
  # opção 1:
  if(opcao == 1) 
    receitas << inserir_receita()

  # opção 2:
  elsif(opcao == 2)
    imprimir_receitas(receitas)
  else
      puts "Opção inválida!"
  end
  
  opcao = menu()
end

puts "Obrigado por usar o Cookbook!"