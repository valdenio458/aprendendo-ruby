# Constantes:
INSERIR_RECEITA =1
VISUALIZAR_RECEITAS = 2
SAIR = 3
def bem_vindo()
  puts "Bem-vindo ao Cookbook, sua rede social de receitas!"
end

def menu()
  puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
  puts "[#{SAIR}] Sair"

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
  if receitas.empty?
    puts "Nenhuma receita cadastrada!"
  end
  puts
end

bem_vindo()

receitas = []

opcao = menu()

loop do
  # opção 1:
  if(opcao == INSERIR_RECEITA) 
    receitas << inserir_receita()

  # opção 2:
  elsif(opcao == VISUALIZAR_RECEITAS)
    imprimir_receitas(receitas)
  elsif(opcao == SAIR)
    break
  else
      puts "Opção inválida!"
  end
  
  opcao = menu()
end

puts
puts "Obrigado por usar o Cookbook!"