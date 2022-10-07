class Conta
  attr_reader :numero, :titular, :saldo # getters
  attr_writer :saldo                    #setters
  # attr_accessor (leitura e escrita)
  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
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