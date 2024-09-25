require 'json'

class Estoque
  def initialize
    @produtos = carregar_estoque
  end

  def adicionar_produto
    puts "Código do produto:"
    codigo = gets.chomp
    puts "Nome do produto:"
    nome = gets.chomp
    puts "Fornecedor:"
    fornecedor = gets.chomp
    puts "Data da compra (YYYY-MM-DD):"
    data_compra = gets.chomp
    puts "Valor da compra:"
    valor_compra = gets.chomp.to_f
    puts "Quantidade:"
    quantidade = gets.chomp.to_i

    produto = Produto.new(codigo, nome, fornecedor, data_compra, valor_compra, quantidade)
    @produtos << produto.to_h
    salvar_estoque
    puts "Produto adicionado com sucesso!"
  end

  def registrar_entrada
    puts "Código do produto:"
    codigo = gets.chomp
    produto = encontrar_produto(codigo)
    if produto
      puts "Quantidade a adicionar:"
      quantidade = gets.chomp.to_i
      produto[:quantidade] += quantidade
      salvar_estoque
      puts "Entrada registrada com sucesso!"
    else
      puts "Produto não encontrado."
    end
  end

  def exibir_estoque
    @produtos.each do |produto|
      puts "Código: #{produto[:codigo]}, Nome: #{produto[:nome]}, Quantidade: #{produto[:quantidade]}"
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

  def encontrar_produto(codigo)
    @produtos.find { |produto| produto[:codigo] == codigo }
  end
end
