class Turma
  attr_reader :nome
  attr_accessor :sala, :professor
  
  def initialize(nome, sala, professor)
    @nome = nome
    @sala = sala
    @professor = professor
  end
  
end
