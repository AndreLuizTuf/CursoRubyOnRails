module Atributos
  def self.included_modules
    base.class_eval do
      def xxx
        puts "ssss"
      end
    end
    base.instance_eval do
      def xxx_de_classe
        puts "ssss"
      end
    end

    puts "Foi incluído na classe - #{base}"
  end
  attr_accessor :id, :nome, :documento

  def mostrar_dados
    puts "#{id} - #{nome} - #{documento}"
  end
end

module MetodosDeClasse
  def metodo_total
    puts "Oiiiii ...."
  end
end


class Cliente
  include Atributos
  extend MetodosDeClasse
end

class Fornecedor
  include Atributos
  extend MetodosDeClasse
end

c = Cliente.new
f = Fornecedor.new
# c.id = 1
# c.nome = "André"
# c.documento = "123.456.789-00"

# c.mostrar_dados

puts "===== instancia cliente ====="
puts c.methods - Class.methods
puts "===== instancia fornecedor ====="
puts f.methods - Class.methods

puts "===== classe cliente ====="
puts Cliente.methods - Class.methods
puts "===== classe fornecedor ====="
puts Fornecedor.methods - Class.methods

# puts c.methods - Class.methods
puts f.methods - Class.methods