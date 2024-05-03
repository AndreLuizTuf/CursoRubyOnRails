class Carro
  attr_accessor :id, :nome, :descrição

  def andar
    puts "O carro #{nome} está andando"
  end

  def nome_preenchido?
    self.nome != '' && self.nome != nil
  end

  # def nome_maiusculo
  #   return self.nome.upcase if self.nome_preenchido?
  #   nil    
  # end

  def nome_maiusculo!
    self.nome = self.nome.upcase if self.nome_preenchido?
    self.nome
  end
end

a = Carro.new
a.nome = 'Sportage'
nome = a.nome_maiusculo!
puts nome
puts a.nome

# puts a.nome_preenchido?
# a.nome = 'Sportage'
# puts a.nome_preenchido?

# a.andar
