class Menu
  def initialize
    @estoque = Estoque.new
    exibir_opcoes
  end

  def exibir_opcoes
    loop do
      puts "\nMenu de Opções"
      puts "1. Adicionar Produto"
      puts "2. Registrar Entrada de Produto"
      puts "3. Registrar Venda"
      puts "4. Exibir Estoque"
      puts "0. Sair"

      escolha = gets.chomp.to_i
      case escolha
      when 1
        @estoque.adicionar_produto
      when 2
        @estoque.registrar_entrada
      when 3
        registrar_venda
      when 4
        @estoque.exibir_estoque
      when 0
        break
      else
        puts "Opção inválida, tente novamente."
      end
    end
  end

  def registrar_venda
    venda = Venda.new(@estoque)
    venda.registrar_venda
  end
end
