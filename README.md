# Analyzing-the-relationship-between-changes-in-population-and-crime-rates-in-Toronto

The paper analyzes the relationship between population density and crime rate in Toronto using data from Open Data Toronto. The data utilizes library `opendatatoronto`, along with `tidyverse`, `janitor`, `knitr`, `kableExtra`, `ggplot2` and `ggpubr`. The paper was exclusively written in RStudios, on R Project, using Quarto document. 

**Statement of LLM usage: The Introduction, and portion of Data, and Discussion and Limitation on "Analyzing the relationship between crime and population density for Toronto neighbourhoods.qmd" was edited with the help of ChatGPT. The entire chat history can be found at `llm_usage.txt`, which can be found "llm" folder under `inputs`.

- `Simulation Sketch.pdf` is pdf file that guides how ideally the simulated data should look like and how the graph and table should look like in the final paper. The file can be in the "sketches" folder under `inputs`.

- `scripts:00-download_data.R` downloads the raw data and saves it under `crime_data.csv`. The "download_data" can be found under `scripts` folder. The raw data can be found in "data" section under `inputs` folder. 

- `scripts:00-simulate_data.R` simulates the data to produce idealized table for the paper and tests were run on simulated data to see check if the simulation code worked or not. This folder can be found under `scripts`. 

`- bibliography1.bib` includes BibText citation for all the sources that are being used in this paper and it is included under "paper" in `outputs` folder. 

- `Analyzing the relationship between crime and population density for Toronto neighbourhoods.qmd` file includes all the code and text for this paper and `Analyzing the relationship between crime and population density for Toronto neighbourhoods.pdf` file contains the pdf version of the complete paper. Both the files can be found under "paper" section, under `outputs` folder. 

