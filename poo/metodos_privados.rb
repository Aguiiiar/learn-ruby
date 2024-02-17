class Sorteio
  def initialize(participantes)
    @participantes = participantes
  end

  def sortear
    return if @participantes.empty?

    sorteado = @participantes.sample

    puts "O participante sorteado foi: #{sorteado}"
    
    remover_participante(sorteado)

    puts "Participantes restantes: #{@participantes}"
  end

  private
  def remover_participante(sorteado)
    @participantes.delete(sorteado)
  end
end

sorteiro = Sorteio.new(['Max', 'Mateus', 'Luis', 'Fernanda'])

sorteiro.sortear

