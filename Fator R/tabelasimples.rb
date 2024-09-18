require 'roo'

# Abra o arquivo Excel
excel_file = Roo::Spreadsheet.open(/home/junior/Documentos/GitHub/DesenvolvendoME/Fase 1/fator R/Calculo Simaples IDEAL 2022.xlsx)

# Acesse a primeira planilha
sheet = excel_file.sheet(0)

# Percorra as linhas da planilha
sheet.each_with_index do |row, index|
  puts "Linha #{index + 1}: #{row}"
end
