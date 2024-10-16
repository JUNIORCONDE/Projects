# Classe Contato
class Contato
  attr_accessor :nome, :numero, :cidade

  def initialize(nome, numero, cidade)
    @nome = nome
    @numero = numero
    @cidade = cidade
  end

  def exibir_contato
    puts "Nome: #{@nome}"
    puts "Número: #{@numero}"
    puts "Cidade: #{@cidade}"
  end
end

# Método para exibir o menu
def exibir_menu
  puts "\n----- MENU -----"
  puts "1. Adicionar Contato"
  puts "2. Exibir Contatos"
  puts "3. Sair"
  print "Escolha uma opção: "
end

def adicionar_contato(agenda)
  puts "\nAdicionar Novo Contato"
  print "Nome: "
  nome = gets.chomp
  print "Número: "
  numero = gets.chomp
  print "Cidade: "
  cidade = gets.chomp

  # Cria um novo contato e adiciona na agenda (um array de contatos)
  contato = Contato.new(nome, numero, cidade)
  agenda << contato
  puts "\nContato adicionado com sucesso!"
end

def exibir_agenda(agenda)
  puts "\nTodos os Contatos Registrados:"
  agenda.each_with_index do |contato, index|
    puts "\nContato ##{index + 1}:"
    contato.exibir_contato
  end
end

# Programa Principal
agenda = []  # Array que armazena os contatos

loop do
  exibir_menu
  opcao = gets.chomp.to_i

  case opcao
  when 1
    adicionar_contato(agenda)
  when 2
    exibir_agenda(agenda)
  when 3
    puts "Saindo do programa..."
    break
  else
    puts "Opção inválida. Por favor, escolha novamente."
  end
end
