require 'json'

class Estoque
  def initialize
    @produtos = []
    @fornecedores = []
    carregar_produtos
  end

  # Menu principal
  def menu
    loop do
      puts "\n==== SISTEMA DE ESTOQUE ===="
      puts "1 - Cadastro de Produtos"
      puts "2 - Lista de Produtos"
      puts "3 - Fornecedores"
      puts "0 - Sair"
      print "Escolha uma opção: "
      opcao = gets.chomp.to_i

      case opcao
      when 1
        cadastrar_produto
      when 2
        listar_produtos
      when 3
        listar_fornecedores
      when 0
        puts "Saindo..."
        break
      else
        puts "Opção inválida! Tente novamente."
      end
    end
  end

  # Cadastro de Produtos
  def cadastrar_produto
    puts "\n==== CADASTRO DE PRODUTO ===="
    print "Fornecedor: "
    fornecedor = gets.chomp
    print "Nota Fiscal: "
    nota_fiscal = gets.chomp
    print "Produto: "
    produto = gets.chomp
    print "Valor: "
    valor = gets.chomp.to_f
    print "Data da Compra (YYYY-MM-DD): "
    data_compra = gets.chomps

    produto = {
      fornecedor: fornecedor,
      nota_fiscal: nota_fiscal,
      produto: produto,
      valor: valor,
      data_compra: data_compra
    }

    @produtos << produto
    @fornecedores << fornecedor unless @fornecedores.include?(fornecedor)
    salvar_produtos
    puts "Produto cadastrado com sucesso!"
  end

  # Lista de Produtos
  def listar_produtos
    if @produtos.empty?
      puts "\nNenhum produto cadastrado."
    else
      puts "\n==== LISTA DE PRODUTOS ===="
      @produtos.each_with_index do |produto, index|
        puts "#{index + 1} - Fornecedor: #{produto[:fornecedor]}, Nota Fiscal: #{produto[:nota_fiscal]}, Produto: #{produto[:produto]}, Valor: #{produto[:valor]}, Data da Compra: #{produto[:data_compra]}"
      end
    end
  end

  # Lista de Fornecedores
  def listar_fornecedores
    if @fornecedores.empty?
      puts "\nNenhum fornecedor cadastrado."
    else
      puts "\n==== LISTA DE FORNECEDORES ===="
      @fornecedores.each_with_index do |fornecedor, index|
        puts "#{index + 1} - Fornecedor: #{fornecedor}"
      end
    end
  end

  private

  # Carregar produtos do arquivo JSON
  def carregar_produtos
    if File.exist?("produtos.json")
      dados = JSON.parse(File.read("produtos.json"), symbolize_names: true)
      @produtos = dados[:produtos] || []
      @fornecedores = dados[:fornecedores] || []
    end
  end

  # Salvar produtos no arquivo JSON
  def salvar_produtos
    dados = { produtos: @produtos, fornecedores: @fornecedores }
    File.open("produtos.json", "w") do |f|
      f.write(JSON.pretty_generate(dados))
    end
  end
end

# Executando o sistema
estoque = Estoque.new
estoque.menu
