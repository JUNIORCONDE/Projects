require 'json'

class Estoque
  def initialize
    @produtos = carregar_estoque
  end

  def adicionar_produto
    puts "Código do produto:"
    codigo = gets.chomp
    puts "Descrição do Produto:"
    descricao = gets.chomp
    puts "Fornecedor:"
    fornecedor = gets.chomp
    puts "Data da compra (DD/MM/AAAA):"
    data_compra = gets.chomp
    puts "Valor da compra:"
    valor_compra = gets.chomp.to_f
    puts "Quantidade:"
    quantidade = gets.chomp.to_i
    puts "Categoria:"
    categoria = gets.chomp

    produto = Produto.new(codigo, descricao, fornecedor, data_compra, valor_compra, quantidade, categoria)
    @produtos << produto.to_h
    salvar_estoque
    puts "Produto adicionado com sucesso!"
  end

  def exibir_estoque
    @produtos.each do |produto|
      puts "Código: #{produto[:codigo]}, Descrição: #{produto[:descricao]}, Quantidade: #{produto[:quantidade]}"
    end
  end

  # Tornar o método público para ser acessado pela classe Venda
  def encontrar_produto(codigo)
    @produtos.find { |produto| produto[:codigo] == codigo }
  end

  def atualizar_produto(produto_atualizado)
    produto = encontrar_produto(produto_atualizado[:codigo])
    if produto
      produto[:quantidade] = produto_atualizado[:quantidade]
      salvar_estoque
    end
  end

  private

  def carregar_estoque
    if File.exist?('estoque.json')
      JSON.parse(File.read('estoque.json'), symbolize_names: true)
    else
      []
    end
  end

  def salvar_estoque
    File.write('estoque.json', JSON.pretty_generate(@produtos))
  end
end
