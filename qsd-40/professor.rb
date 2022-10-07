class Professor
  attr_reader :codigo
  attr_accessor :nome
  
  def initialize(nome, codigo)
    @nome = nome
    @codigo = codigo
  end

  
end
