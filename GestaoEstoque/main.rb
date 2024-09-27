# Arquivo principal que inicia o sistema de gerenciamento de estoque.

# Requer os arquivos que contêm as definições das classes.
require_relative 'menu'    # Inclui o arquivo 'menu.rb' no programa.
require_relative 'estoque' # Inclui o arquivo 'estoque.rb' no programa.
require_relative 'produto' # Inclui o arquivo 'produto.rb' no programa.
require_relative 'venda'   # Inclui o arquivo 'venda.rb' no programa.

# Inicia o sistema exibindo o menu de opções para o usuário.
# A classe `Menu` gerencia as opções disponíveis.
Menu.new
