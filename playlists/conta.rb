require_relative 'cliente'

class Conta
  attr_reader :numero, :titular, :saldo # getters
  attr_writer :saldo                    #setters
  # attr_accessor (leitura e escrita)
  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

  def sacar(valor)
    if saldo >= valor
      self.saldo -= valor
    else
      puts "Saldo insuficiente!"
    end
  end

  def depositar(valor)
    self.saldo += valor
  end

  def transferir(conta_destino, valor)
    sacar(valor)
    conta_destino.depositar(valor)
  end

  # def numero
  #   @numero
  # end

  # def titular
  #   @titular
  # end

  # def saldo
  #   @saldo
  # end

  # def titular=(outro_titular)
  #   @titular = outro_titular
  # end
end