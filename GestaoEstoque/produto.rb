class Produto
  # Define getter e setter para todos os atributos do produto.
  attr_accessor :codigo, :descricao, :fornecedor, :data_compra, :valor_compra, :quantidade, :categoria

  # Inicializa um objeto Produto com os atributos fornecidos.
  def initialize(codigo, descricao, fornecedor, data_compra, valor_compra, quantidade, categoria)
    @codigo = codigo
    @descricao = descricao
    @fornecedor = fornecedor
    @data_compra = data_compra
    @valor_compra = valor_compra
    @quantidade = quantidade
    @categoria = categoria  # Inicializa o atributo categoria
  end

  # Converte o objeto Produto em um hash para ser salvo em JSON.
  def to_h
    {
      codigo: @codigo,
      descricao: @descricao,
      fornecedor: @fornecedor,
      data_compra: @data_compra,
      valor_compra: @valor_compra,
      quantidade: @quantidade,
      categoria: @categoria
    }
  end

  # Método adicional para exibir as informações do produto.
  def exibir_detalhes
    puts "Código: #{@codigo}"
    puts "Descrição: #{@descricao}"
    puts "Fornecedor: #{@fornecedor}"
    puts "Data da Compra: #{@data_compra}"
    puts "Valor da Compra: #{@valor_compra}"
    puts "Quantidade em Estoque: #{@quantidade}"
    puts "Categoria: #{@categoria}"
  end
end
