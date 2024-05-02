# a = 1
# puts a.class
# b = 1.1
# puts b.class

# c = a + "8"
# puts c

puts 1.class  # 1 é um objeto do tipo Integer.
puts 1.1.class # 1.1 é um objeto do tipo Float.
puts true.class # true é um objeto do tipo TrueClass.
puts false.class # false é um objeto do tipo FalseClass.
puts "".class # "" (uma string vazia) é um objeto do tipo String.
puts :teste.class # :teste é um símbolo (symbol), que é um tipo especial de objeto imutável em Ruby, e sua classe é Symbol.
x = {}
puts x.class # x = {} cria um hash vazio, e x é um objeto do tipo Hash.
puts [].class # [] cria um array vazio, e é um objeto do tipo Array.
puts (1..2).class # (1..2) cria um range (faixa) de 1 a 2, e é um objeto do tipo Range.

# Para saber a classe de um objeto, usamos o método class. 
# O método class é um método de instância de Object, que é a superclasse de todos os objetos em Ruby. 
# Ele retorna a classe do objeto em questão. 
# Como vimos, os objetos em Ruby são instâncias de classes, e cada objeto tem uma classe associada a ele. 
# A classe de um objeto determina o comportamento do objeto, ou seja, quais métodos ele responde. 
# Por exemplo, um objeto do tipo Integer responde a métodos como +, -, *, /, etc., enquanto um objeto do tipo String responde a métodos como upcase, downcase, reverse, etc. 
# Portanto, a classe de um objeto é um fator importante para determinar o comportamento do objeto. 
# Por isso, é importante saber a classe de um objeto para saber quais métodos ele responde. 
# Isso é especialmente útil quando estamos trabalhando com objetos de classes que não conhecemos muito bem, ou quando estamos trabalhando com objetos de classes que têm muitos métodos. 
# Nesses casos, saber a classe do objeto nos ajuda a saber quais métodos ele responde, e assim podemos usá-los de forma eficaz. 
# Portanto, saber a classe de um objeto é uma habilidade importante para programar em Ruby. 

# Para saber a classe de um objeto, usamos o método class. 
# O método class é um método