class Contato
  attr_accessor :nome, :numero, :cidade

  # Método initialize para inicializar os atributos
  def initialize(nome, numero, cidade)
    @nome = nome
    @numero = numero
    @cidade = cidade
  end

  # Método para exibir os dados do contato
  def exibir_contato
    puts "\nContato:"
    puts "Nome: #{@nome}"
    puts "Número de celular: #{@numero}"
    puts "Cidade: #{@cidade}"
  end
end

# Array para armazenar os contatos
agenda = []

# Método para adicionar um novo contato
def adicionar_contato(agenda)
  puts "Digite o nome: "
  nome = gets.chomp
  puts "Digite o número de celular: "
  numero = gets.chomp
  puts "Digite a cidade: "
  cidade = gets.chomp

  # Cria uma nova instância da classe Contato
  contato = Contato.new(nome, numero, cidade)

  # Adiciona o contato ao array agenda
  agenda << contato

  # Exibe o contato criado
  contato.exibir_contato
end


# Adicionando contatos e salvando na agenda
# Aqui inicializa todo codigo
adicionar_contato(agenda)

=begin

# Exibindo todos os contatos salvos
exibir_agenda(agenda)


# Método para exibir todos os contatos da agenda
def exibir_agenda(agenda)
  puts "\nContatos Registrados:"
  agenda.each_with_index do |contato, index|
    puts "---- Contato #{index + 1} ----"
    contato.exibir_contato
  end
end
=end
