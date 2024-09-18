# 🧮 **Cálculo do Fator R - Simples Nacional**

Este projeto tem como objetivo auxiliar na **automatização do cálculo do Fator R** para empresas optantes pelo Simples Nacional, de forma simples e precisa.

## 📄 **Descrição**

O **Fator R** é utilizado para determinar a tributação das empresas prestadoras de serviço no Simples Nacional. Este cálculo leva em consideração a relação entre a folha de pagamento e o faturamento bruto dos últimos 12 meses.

⚠️ **Obs:** O cálculo correto do Fator R pode reduzir significativamente o valor dos tributos devidos!

## 📊 **Como Funciona o Cálculo do Fator R**

O cálculo do Fator R é feito da seguinte forma: 
Fator R = (Folha de Pagamento dos últimos 12 meses) / (Receita Bruta dos últimos 12 meses)

## 🚀 **Tecnologias Utilizadas**

- **Ruby on Rails 7.0**

## 🛠️ **Instalação**

Siga os passos abaixo para configurar o ambiente e rodar o projeto localmente:

```bash
# Clone o repositório
git clone https://github.com/usuario/projeto-fator-r.git
cd projeto-fator-r

# Instale as dependências
bundle install

# Configure o banco de dados
rails db:create db:migrate

# Inicie o servidor
rails s
