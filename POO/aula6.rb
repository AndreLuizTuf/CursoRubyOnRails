class Carro
  attr_accessor :id, :nome, :descrição

  def andar
    puts "O carro #{nome} está andando #{self}"
  end

  def self.andar
    puts "O carro está andando #{self}"
  end
end

a = Carro.new
a.nome = 'Sportage'
puts a.andar
puts Carro.andar
