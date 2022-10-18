class MegaAnfitriao
  attr_accessor :nomes

  # Criar o objecto
  def initialize(nomes = "Mundo")
    @nomes = nomes
  end

  # Dizer ola a todos
  def diz_ola
    if @nomes.nil?
      puts "..."
    elsif @nomes.respond_to?("each")
      # @nomes é uma lista de algum tipo,
      # assim podemos iterar!
      @nomes.each do |nome|
        puts "Ola #{nome}"
      end
    else
      puts "Ola #{@nomes}"
    end
  end

  # Dizer adeus a todos
  def diz_adeus
    if @nomes.nil?
      puts "..."
    elsif @nomes.respond_to?("join")
      # Juntar os elementos à lista
      # usando a vírgula como separador
      puts "Adeus #{@nomes.join(", ")}. Voltem em breve."
    else
      puts "Adeus #{@nomes}. Volta em breve."
    end
  end

end


# __FILE__ é uma variável mágica que contém o nome do arquivo atual. $0 é o nome do arquivo usado para iniciar o programa. Esta verificação diz: “Se este é o arquivo principal a ser usado, então…”, isto permite que um arquivo seja usado como biblioteca e nesse contexto não executar código, mas caso o arquivo seja usado como executável então executa esse código.
if __FILE__ == $0
  mg = MegaAnfitriao.new
  mg.diz_ola
  mg.diz_adeus

  # Alterar o nome para "Diogo"
  mg.nomes = "Diogo"
  mg.diz_ola
  mg.diz_adeus

  # Alterar o nome para um vector de nomes
  mg.nomes = ["Alberto", "Beatriz", "Carlos",
    "David", "Ernesto"]
  mg.diz_ola
  mg.diz_adeus

  # Alterar para nil
  mg.nomes = nil
  mg.diz_ola
  mg.diz_adeus
end