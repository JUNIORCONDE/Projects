class Menu
  def initialize
    # Cria uma nova instância da classe Estoque, que gerencia os produtos no estoque.
    @estoque = Estoque.new
    # Exibe o menu de opções para o usuário.
    exibir_opcoes
  end

  def exibir_opcoes
    loop do
      # Loop infinito para exibir o menu até o usuário escolher sair.
      puts "\nMenu de Opções"
      puts "1. Adicionar Produto"
      puts "2. Registrar Venda"
      puts "3. Exibir Estoque"
      puts "0. Sair"

      # Recebe a escolha do usuário e converte para um número inteiro.
      escolha = gets.chomp.to_i

      # `case` permite selecionar diferentes ações com base no valor de `escolha`.
      case escolha
      when 1
        # Adiciona um novo produto ao estoque.
        @estoque.adicionar_produto
      when 2
        # Registra uma nova venda.
        registrar_venda
      when 3
        # Exibe os produtos disponíveis no estoque.
        @estoque.exibir_estoque
      when 0
        # Sai do loop, encerrando o programa.
        break
      else
        # Mensagem de erro para entrada inválida.
        puts "Opção inválida, tente novamente."
      end
    end
  end

  def registrar_venda
    # Cria uma nova instância da classe Venda e passa o estoque atual para registrar a venda.
    venda = Venda.new(@estoque)
    venda.registrar_venda
  end
end
