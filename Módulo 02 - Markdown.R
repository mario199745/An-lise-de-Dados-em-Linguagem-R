#Exemplo de utiliza��o do R markdown

#Na linguagem R � poss�vel usar o Markdown para formatar os seus relat�rios


#Instala��o do Rmarkdown
install.packages("rmarkdown")
install.packages('tinytex')
library(tinytex)

#esta linha poder� levar alguns minutos para terminar a execu��o
#acompanhe o progresso na aba console e aguarde a instala��o ser finalizada
tinytex::install_tinytex()


# Pr�ximos passos

# Criar um arquivo R Markdown: File > New File RMarkdown
# Criar script
# Gerar Relat�rio: Knit > Knit to PDF