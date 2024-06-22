# Instalar pacotes necessários
install.packages("tidyverse")
install.packages("skimr")
install.packages("DataExplorer")
install.packages("conflicted")

# Carregar pacotes
library(tidyverse)
library(skimr)
library(DataExplorer)
library(conflicted)

# Resolver conflitos de funções
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")
 
 # Carregar dados
 data_merged <- read_csv("Dataset/merged_data_cleaned_var.csv")
 
 # Visão geral dos dados
 glimpse(data_merged)
 
 # Resumo estatístico dos dados
 summary(data_merged)
 
 # Resumo detalhado com skimr
 skim(data_merged)
 
 # Introdução aos dados com DataExplorer
 introduce(data_merged)
 
 # Verificar dados faltantes
 plot_missing(coffee_data)
 
 # Distribuição das variáveis numéricas
 plot_histogram(coffee_data)
 
 # Distribuição das variáveis categóricas
 plot_bar(coffee_data)
 
 # Matriz de correlação
 plot_correlation(coffee_data, type = "continuous")
 
 # Boxplots para variáveis numéricas em relação a uma variável categórica
 coffee_data %>% 
   ggplot(aes(x = `Country.of.Origin`, y = Aroma)) + 
   geom_boxplot() + 
   theme(axis.text.x = element_text(angle = 45, hjust = 1))