class Produto
  attr_accessor :codigo, :nome, :fornecedor, :data_compra, :valor_compra, :quantidade

  def initialize(codigo, nome, fornecedor, data_compra, valor_compra, quantidade)
    @codigo = codigo
    @nome = nome
    @fornecedor = fornecedor
    @data_compra = data_compra
    @valor_compra = valor_compra
    @quantidade = quantidade
  end

  def to_h
    {
      codigo: @codigo,
      nome: @nome,
      fornecedor: @fornecedor,
      data_compra: @data_compra,
      valor_compra: @valor_compra,
      quantidade: @quantidade
    }
  end
end
