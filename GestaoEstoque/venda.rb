class Venda
  def initialize(estoque)
    @estoque = estoque
  end

  def registrar_venda
    puts "Código do produto:"
    codigo = gets.chomp
    produto = @estoque.encontrar_produto(codigo)

    if produto
      puts "Quantidade a vender:"
      quantidade_venda = gets.chomp.to_i

      if produto[:quantidade] >= quantidade_venda
        produto[:quantidade] -= quantidade_venda
        @estoque.atualizar_produto(produto)
        puts "Venda registrada com sucesso!"
      else
        puts "Quantidade insuficiente no estoque."
      end
    else
      puts "Produto não encontrado."
    end
  end
end
