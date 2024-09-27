require 'json' # Biblioteca padrão para manipulação de arquivos JSON.

class Estoque
  def initialize
    # Carrega os produtos do arquivo JSON, ou inicializa um array vazio se o arquivo não existir.
    @produtos = carregar_estoque
  end

  def adicionar_produto
    # Solicita as informações do produto ao usuário.
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

    # Cria uma nova instância da classe Produto.
    produto = Produto.new(codigo, descricao, fornecedor, data_compra, valor_compra, quantidade, categoria)
    # Adiciona o produto ao array de produtos e salva no arquivo JSON.
    @produtos << produto.to_h
    salvar_estoque
    puts "Produto adicionado com sucesso!"
  end

  def exibir_estoque
    # Itera sobre todos os produtos e exibe suas informações principais.
    @produtos.each do |produto|
      puts "Código: #{produto[:codigo]}, Descrição: #{produto[:descricao]}, Quantidade: #{produto[:quantidade]}"
    end
  end

  def encontrar_produto(codigo)
    # Encontra o produto pelo código no array de produtos.
    @produtos.find { |produto| produto[:codigo] == codigo }
  end

  def atualizar_produto(produto_atualizado)
    # Encontra o produto pelo código e atualiza suas informações no array.
    produto = encontrar_produto(produto_atualizado[:codigo])
    if produto
      produto[:quantidade] = produto_atualizado[:quantidade]
      salvar_estoque
    end
  end

  private

  def carregar_estoque
    # Carrega o estoque do arquivo JSON, ou retorna um array vazio se o arquivo não existir.
    if File.exist?('estoque.json')
      JSON.parse(File.read('estoque.json'), symbolize_names: true)
    else
      []
    end
  end

  def salvar_estoque
    # Salva o array de produtos no arquivo 'estoque.json' com formatação legível.
    File.write('estoque.json', JSON.pretty_generate(@produtos))
  end
end
