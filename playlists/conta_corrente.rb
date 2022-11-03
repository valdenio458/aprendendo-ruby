require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite

  def initialize(numero, titular, saldo, limite)
    super(numero, titular, saldo)
    # super - roda o initialize do pai dessa classe(neste caso a classe Conta)
    @limite = limite
  end

  def sacar(valor)
    if (saldo + limite) >= valor
      self.saldo -= valor
    else
      puts "Saldo insuficiente!"
    end
  end


end
