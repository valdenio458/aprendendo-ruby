class Funcionario
  attr_accessor :nome, :codigo, :inicia_ferias
  def initialize(nome, codigo)
    @nome = nome
    @codigo = codigo
    @ferias = false
  end

  def imprime()
    puts "Funcionário #{nome} - Código #{codigo} - Férias: #{@ferias}"
  end
end