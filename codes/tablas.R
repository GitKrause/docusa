```{r}
#| label: tbl-estimaciones-sae
#| tbl-cap: "Estimaciones de desocupación mediante modelo logit multinomial bayesiano"
#| echo: false
#| message: false
#| warning: false

# 1. Cargar librerías necesarias
library(flextable)
library(dplyr)

# 2. Leer el archivo con los datos ya calculados
# Supongamos que tu archivo .rds contiene el dataframe con los resultados
datos_sae <- readRDS("data/resultados_modelo_bayeseano.rds")

# 3. Aplicar flextable y sus características estéticas
datos_sae %>%
  flextable() %>%
  set_header_labels(
    comuna = "Comuna",
    tasa_estimada = "Tasa Desocupación (%)",
    lim_inf = "Lím. Inferior (95%)",
    lim_sup = "Lím. Superior (95%)"
  ) %>%
  colformat_double(digits = 4) %>% # Formatea decimales
  bold(part = "header") %>%        # Encabezado en negrita
  theme_booktabs() %>%             # Estilo sobrio tipo publicación científica
  autofit()                        # Ajusta el ancho automáticamente para Word
