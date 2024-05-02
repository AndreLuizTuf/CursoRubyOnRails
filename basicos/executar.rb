puts "Digite o seu nome:"
nome = gets.to_s # Essa linha lê a entrada do usuário a partir do console e a armazena na variável nome. gets é um método que recebe a entrada do usuário como uma string. O .to_s é redundante aqui, já que gets retorna uma string por padrão.

puts "O nome que você digitou foi: #{nome}" #Essa linha exibe uma mensagem junto com o nome digitado pelo usuário. A interpolação #{nome} insere o valor da variável nome na string.

