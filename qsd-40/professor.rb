class Professor < Funcionario
  attr_accessor :disciplina
  
  def initialize(nome, codigo, disciplina)
    super(nome, codigo)
    @disciplina = disciplina    
  end   

  def imprime()
    puts "Funcionário #{nome} - Código #{codigo} - Férias: #{@ferias} - Disciplina #{disciplina}"
  end
end
