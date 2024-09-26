class Produto
  attr_accessor :codigo, :descricao, :fornecedor, :data_compra, :valor_compra, :quantidade, :categoria

  def initialize(codigo, descricao, fornecedor, data_compra, valor_compra, quantidade, categoria)
    @codigo = codigo
    @descricao = descricao
    @fornecedor = fornecedor
    @data_compra = data_compra
    @valor_compra = valor_compra
    @quantidade = quantidade
    @categoria = categoria  # Novo atributo adicionado aqui
  end

  def to_h
    puts "Código: #{@codigo}"
    puts "Descrição: #{@descricao}"
    puts "Fornecedor: #{@fornecedor}"
    puts "Data da Compra: #{@data_compra}"
    puts "Valor da Compra: #{@valor_compra}"
    puts "Quantidade em Estoque: #{@quantidade}"
    puts "Categoria: #{@categoria}"
  end
end
