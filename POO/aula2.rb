class Pessoa
  def initialize(pessoa_hash = {})
    @nome = pessoa_hash[:nome]
    @idade = pessoa_hash[:idade]
    @sobrenome = pessoa_hash[:sobrenome]
  end

  # def initialize(pessoa_array = [])
  #   @nome = pessoa_array[0]
  #   @sobrenome = pessoa_array[1]
  #   @idade = pessoa_array[2]
  # end

  attr_accessor :nome, :sobrenome, :idade
  
  def mostra_nome_completo
    # "#{@nome} #{@sobrenome}"
    "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
  end
end


# a = Pessoa.new("André", "França").mostra_nome_completo
puts Pessoa.new({
  nome: "André",
  sobrenome: "França",
  idade: 37
}).mostra_nome_completo

# puts Pessoa.new([
#   "André",
#   "França",
#   37
# ]).mostra_nome_completo


