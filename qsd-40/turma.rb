class Turma
  attr_reader :nome
  attr_accessor :sala, :professor, :alunos
  
  def initialize(nome, sala, professor)
    @nome = nome
    @sala = sala
    @professor = professor
    @alunos = []
  end

  def adiciona_aluno(aluno)
    alunos << aluno
  end 
  
  # def total_alunos(aluno)
  #   alunos << aluno
  #   alunos.lenght
  # end
end
