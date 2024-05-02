def funcao_sem_parametros  # A função `funcao_sem_parametros` não recebe nenhum parâmetro. Quando chamada, ela simplesmente imprime a string "Olá estou em função".
  puts "Olá estou em função"
end

funcao_sem_parametros

def funcao_com_parametro(nome) # A função `funcao_com_parametro` recebe um único parâmetro, `nome`. Quando chamada, ela imprime a string "Você passou o nome #{nome}", onde `#{nome}` é substituído pelo valor do parâmetro `nome`. Esta função é chamada duas vezes, uma vez com o argumento 'André' entre parênteses e uma vez sem parênteses, demonstrando que em Ruby, parênteses são opcionais ao chamar funções com argumentos.
  puts "Você passou o nome #{nome}" 
end

funcao_com_parametro('André')
funcao_com_parametro 'André'

def funcao_com_parametros(nome, idade) # A função `funcao_com_parametros` recebe dois parâmetros, `nome` e `idade`. Quando chamada, ela imprime a string "Você passou o nome #{nome} com a idade #{idade} na função", onde `#{nome}` e `#{idade}` são substituídos pelos valores dos parâmetros correspondentes.
  puts "Você passou o nome #{nome} com a idade #{idade} na função"  
end

funcao_com_parametros('André', 25)
funcao_com_parametros 'André', 25

def funcao_com_parametro_e_valor_padrao(nome = 'Lana') # A função `funcao_com_parametro_e_valor_padrao` recebe um parâmetro, `nome`, que tem um valor padrão de 'Lana'. Isso significa que se a função é chamada sem argumentos, `nome` será 'Lana'. Se um argumento é fornecido ao chamar a função, esse argumento substitui o valor padrão.
  puts "Você passou o nome #{nome} na função com nome padrão Lana"
end

funcao_com_parametro_e_valor_padrao
funcao_com_parametro_e_valor_padrao('André')

def funcao_com_parametro_array(array = [])  #  A função `funcao_com_parametro_array` recebe um parâmetro, `array`, que tem um valor padrão de um array vazio. Quando chamada, ela imprime a string "Função com array - " seguida pela representação string do array. Esta função é chamada três vezes: uma vez sem argumentos, uma vez com um array de três números como argumento, e uma vez com um array de três números diferentes como argumento.
  puts "Função com array - " + array.inspect
end

funcao_com_parametro_array
funcao_com_parametro_array([1, 2, 3])
funcao_com_parametro_array [4,5,6]

def funcao_com_parametro_hash(hash = {}) # função `funcao_com_parametro_hash` recebe um parâmetro, `hash`, que tem um valor padrão de um hash vazio. Quando chamada, ela imprime a string "Função com hash - " seguida pela representação string do hash. Esta função é chamada três vezes: uma vez sem argumentos, uma vez com um hash contendo um par chave-valor como argumento, e uma vez com um hash contendo dois pares chave-valor como argumento.
  puts "Função com hash - " + hash.inspect
end

funcao_com_parametro_hash
funcao_com_parametro_hash({nome: "teste"})
funcao_com_parametro_hash({nome: "teste", idade: 25})

def funcao_com_any_parametros(*parametros) 
  puts "funcao_com_any_parametros - " + parametros.inspect # A função `funcao_com_any_parametros` recebe um número variável de parâmetros, que são coletados em um array chamado `parametros`. Quando chamada, a função imprime a string "funcao_com_any_parametros - " seguida pela representação string do array `parametros`. Esta função é chamada três vezes: uma vez sem argumentos, uma vez com três argumentos diferentes e uma vez com três argumentos de tipos diferentes.
end

funcao_com_any_parametros
funcao_com_any_parametros 1,2,4
funcao_com_any_parametros("1", 2.5, 4)

def soma(a, b)
  return a + b # A função `soma` recebe dois parâmetros, `a` e `b`, e retorna a soma deles. O valor de retorno é explicitamente indicado com a palavra-chave `return`.
end

def soma_sem_return(a, b)
  a + b # A função `soma_sem_return` recebe dois parâmetros, `a` e `b`, e retorna a soma deles. O valor de retorno é a última expressão avaliada, que neste caso é a soma de `a` e `b`.
end

x = soma(1,2)
y = soma_sem_return(1,2)

puts "o resultado de x=#{x} o resultado de y=#{y}"

def soma_onde_return_resultado_maior_cinco(a, b)
  c = a + b
  return 10 if c > 5 # A função `soma_onde_return_resultado_maior_cinco` recebe dois parâmetros, `a` e `b`, e retorna 10 se a soma de `a` e `b` for maior que 5. Caso contrário, a função retorna a soma de `a` e `b`.
  c * 20
end

puts "O resultado é: " + soma_onde_return_resultado_maior_cinco(1,2).to_s # a string "O resultado é: " é concatenada com a string que representa o resultado da chamada da função, e o resultado dessa concatenação é passado para `puts`, que imprime a string resultante. Portanto, se a soma de 1 e 2 for maior que 5, você verá "O resultado é: 10" impresso. Caso contrário, você verá "O resultado é: 60" impresso, porque 1 + 2 é 3, e 3 multiplicado por 20 é 60.
puts "O resultado é: " + soma_onde_return_resultado_maior_cinco(5,2).to_s

def metodo_com_bloco
  yield if block_given? # O método `metodo_com_bloco` verifica se um bloco foi passado para ele com a função `block_given?`. Se um bloco foi passado, ele chama o bloco com a palavra-chave `yield`.
end

metodo_com_bloco { puts "Bloco sendo executado!" } # O método `metodo_com_bloco` chama o bloco passado para ele, se houver um bloco passado. Neste caso, o bloco passado imprime a string "Bloco sendo executado!".
metodo_com_bloco do
  puts "Bloco 1 sendo executado!"
  puts "Bloco 2 sendo executado!"
  puts "Bloco 3 sendo executado!"
  puts "Bloco 4 sendo executado!"
  puts "Bloco 5 sendo executado!"
end
