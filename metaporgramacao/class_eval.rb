String.class_eval do
  def mostra_mais
    puts "#{self} - adicionando mais um texto"
  end
end

"Minha filha é a Liah".mostra_mais

