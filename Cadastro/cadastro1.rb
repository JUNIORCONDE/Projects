class Aluno
  # Definindo os métodos getter e setter manualmente para os atributos nome e idade
  def nome
    @nome
  end

  def nome=(nome)
    @nome = nome
  end

  def idade
    @idade
  end

  def idade=(idade)
    @idade = idade
  end

  # O método initialize é o mesmo, pois ele já é necessário
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  # O método to_s para formatar a saída do objeto Aluno em uma string
  def to_s
    "Nome: #{@nome}, Idade: #{@idade}"
  end
end
