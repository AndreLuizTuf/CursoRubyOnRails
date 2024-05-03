class Pessoa
  def initialize(pessoa_hash = {})
    @nome = pessoa_hash[:nome]
    @idade = pessoa_hash[:idade]
    @sobrenome = pessoa_hash[:sobrenome]
  end

  # public  

  attr_accessor :nome, :sobrenome, :idade

  private

  def mostra_nome_completo_private
    "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
  end

  public
  
  def mostra_nome_completo
    self.mostra_nome_completo_private
  end

  def outro
    self.mostra_nome_completo
  end
end


# a = Pessoa.new("André", "França").mostra_nome_completo
p = Pessoa.new({
  nome: "André",
  sobrenome: "França",
  idade: 37
})

puts p.nome
puts p.mostra_nome_completo
puts p.outro
# puts p.mostra_nome_completo_private



