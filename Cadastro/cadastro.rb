class Aluno
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def to_s
    "Nome: #{@nome}, Idade: #{@idade}"
  end
end

class CadastroDeAlunos
  def initialize
    @alunos = []
  end

  # Adiciona um novo aluno com validação de duplicatas
  def adicionar_aluno(nome, idade)
    if @alunos.any? { |aluno| aluno.nome == nome }
      puts "Aluno com o nome #{nome} já está cadastrado."
    else
      aluno = Aluno.new(nome, idade)
      @alunos << aluno
      puts "Aluno #{nome} cadastrado com sucesso!"
    end
  end

  # Lista todos os alunos
  def listar_alunos
    if @alunos.empty?
      puts "Nenhum aluno cadastrado."
    else
      puts "Alunos cadastrados:"
      @alunos.each { |aluno| puts aluno }
    end
  end

  # Remove um aluno pelo nome, com feedback mais detalhado
  def remover_aluno(nome)
    aluno_encontrado = @alunos.find { |aluno| aluno.nome == nome }
    if aluno_encontrado
      @alunos.delete(aluno_encontrado)
      puts "Aluno #{aluno_encontrado.nome}, Idade: #{aluno_encontrado.idade} removido com sucesso."
    else
      puts "Aluno #{nome} não encontrado."
    end
  end
end

# Interface do Sistema
def menu
  cadastro = CadastroDeAlunos.new
  loop do
    puts "\nBem Vindo ao Sistema de Cadastro de Alunos"
    puts "1. Cadastrar Aluno"
    puts "2. Listar Alunos"
    puts "3. Remover Aluno"
    puts "4. Sair"
    print "Escolha uma das Opções"
    opcao = gets.chomp.to_i

    case opcao
    when 1
      print "Digite o nome do aluno: "
      nome = gets.chomp
      if nome.empty?
        puts "Nome não pode ser vazio."
        next
      end

      print "Digite a idade do aluno: "
      idade = gets.chomp.to_i
      if idade <= 0
        puts "Idade deve ser um número positivo."
        next
      end
      cadastro.adicionar_aluno(nome, idade)

    when 2
      cadastro.listar_alunos
    when 3
      print "Digite o nome do aluno a ser removido: "
      nome = gets.chomp
      cadastro.remover_aluno(nome)
    when 4
      puts "Saindo do sistema..."
      break
    else
      puts "Opção inválida, tente novamente."
    end
  end
end

# Inicializa o menu
menu
