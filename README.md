# BT1013.201-SARS-CoV-2-genome-analysis
## Repositorio final del Análisis de biología computacional (Gpo 201)

Se obtuvieron las secuencias de los genomas de 10 de las variantes del SARS-CoV-2.
Para ello se utilizo la función read.GenBank para obtener los genomas directamente del NCBI desde R Studio.
Se realizó unn alineamiento de los genomas virales para poder visualizar el resultado del alineamiento en un navegador web. Como se muestra a continuación:

![Captura de pantalla (6)](https://github.com/marianaagrcg/BT1013.201-SARS-CoV-2-genome-analysis/assets/113316842/b74d1e40-b9ed-4782-a9a7-083738cab13d)

Así también se creó una matriz de distancia a partir de los genomas alineados, lo cual sirvió para poder hacer una tabla en escala de grises en la que se puede observar de manera visual el resultado de la matriz de distancia.

![Captura de pantalla (7)](https://github.com/marianaagrcg/BT1013.201-SARS-CoV-2-genome-analysis/assets/113316842/503218bf-256c-4c2f-a8d2-c18937503329)

![Captura de pantalla (8)](https://github.com/marianaagrcg/BT1013.201-SARS-CoV-2-genome-analysis/assets/113316842/c3216d91-ab8c-4aea-bd38-7d8eb480d30b)

Finalmente se construyó un árbol filogenético a partir de la matriz de distancia obtenida y se incluye en el árbol los números de accesión de los genomas utilizados.

![Captura de pantalla (9)](https://github.com/marianaagrcg/BT1013.201-SARS-CoV-2-genome-analysis/assets/113316842/50c47f04-76f8-4544-8155-2e8d0c36f9bf)
