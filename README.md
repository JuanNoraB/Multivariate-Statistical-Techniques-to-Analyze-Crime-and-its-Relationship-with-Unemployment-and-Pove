# DillingerMultivariate-Statistical-Techniques-to-Analyze-Crime-and-its-Relationship-with-Unemployment-and-PovePoverty: A Case Study

In this work, analyze crime in Ecuador from Jan 2021 to May 2022 using statistical tools like clustering and HJ-Biplot. It also examines the correlation between crime, poverty, and unemployment, finding that Amazon provinces have the highest rates in all variables of poverty and rape.

## Data Description
Data on crime, unemployment, poverty levels, and a number of inhabitants per province, during the years covered by this study, were provided by the [INEC](https://www.ecuadorencifras.gob.ec/institucional/home/).

##### Crime 
The provided crime data covers the period from January 2021 to May 2022, and presents a classification by month and by province. From this data, nine variables were taken: homicides, personal robberies, auto parts theft, motorcycle theft, car theft, house theft, business robbery, rapes, and the number of inhabitants per province. 

##### Unemployment and Poverty
The provided unemployment and poverty data are classified by month and province and cover the years 2018, 2019, and 2021.
In this case, nine variables were selected: unemployment, adequate employment, unpaid employment, NEET people, poor by income, extreme poverty by income, basic needs poverty, multidimensional poverty, and extreme multidimensional
poverty. In order to avoid over-plotting and achieve adequate visualization of the graphs of each analysis, a code was assigned to each province and to each study variable. This codification is shown in Tables 1, 2, and 3. Additionally, to refer to the crime rates per 100,000 inhabitants corresponding to each variable, 100K was added as a suffix to its corresponding code.

##### Table 1: Codes for provinces
.
| Province | Code | Province | Code | Province  | Code |
| ------ | ------ | ------ | ------ | ------ | ------ | 
Azuay | A | Guayas | G | Pichincha  | P |
Bolívar | B | Imbabura |I |Tungurahua |T |
Cañar | U | Loja | L | Zamora Chinchipe | Z|
Carchi | C | Los Rios |  R | Galapagos | W |
Cotopaxi | X | Manabi | M | Sucumbios |K |
Chimborazo| H |Morona Santiago| V| Orellana| Q|
El Oro| O |Napo |N |Santo Domingo |J|
Esmeraldas |E |Pastaza |S |Santa Elena |Y|  
###### Table 2: Codes for crime variables 
.
|Variable |Code |Variable |Code|
| ------ | ------ | ------ | ------ |
|Homicides| X1 |House theft| X6|
Personal robberies| X2| Business robbery| X7|
Auto parts theft| X3| Rapes |X8|
Motorcycle theft |X4 |Number of inhabitants per province| X9|
Car theft| X5|

###### Table 3: Codes for unemployment and poverty
.
| Variable |Code |Variable| Code|
| ------ | ------ | ------ | ------ |
Unemployment |Y 1 |Extreme poverty by income |Y 6|
Adequate employment |Y 2 |Basic needs poverty |Y 7|
Unpaid employment| Y 3| Multidimensional poverty| Y 8|
NEET people |Y 4 |Extreme multidimensional poverty| Y 9|
Poor by income |Y 5|

## Analysis

##### First Analysis. 
This analysis covers the period corresponding to January 2021 May 2022, and it is developed in three parts: analysis of crime per month, per province, and per 100,000 inhabitants. Crime data corresponding to the 24 provinces and the time period of interest were filtered for the first two parts. Subsequently, the data was organized to obtain the number of crimes raised each month at the national and provincial levels. Finally, to analyze crime in each province regardless of its inhabitants, crime was expressed as a rate for every 100,000 inhabitants. For this last step, the data corresponding to the number of inhabitants per province was used.

##### Second Analysis. 
The second analysis combines the information given by variables of crime, poverty, and unemployment. Its objective is to determine if there is any correlation between the crimes in each province and their situation regarding employability and poverty. Unemployment and poverty data are published annually; however, data for the year 2020 are not available on INEC’s website; As mentioned before, Clustering and HJ-Biplot techniques were used for the two proposed analyses, over previously normalized data. These statistical techniques were applied using modules from the R software and the MultBiplotR package by Vicente-Villadon [1]. The results are discussed in the next section.


## Files
In this repository there are 10 analyses, each analysis contains their own directory with the data used and the generated results.
* crimen_empleo_2019
* crimen_empleo_2021
* criminalidad_2019
* criminalidad_2019x100
* criminalidad_2021
* criminalidad_2021x100
* pc2019_reducido
* pc2021_reducido
* pobreza2019
* pobreza2021

The Crime-Unemployment-proverty.R contain all the code write in R for each fi the analysis. the code is devided in sections.



## References
1. Vicente Villardon, J.L.: MULTBIPLOT: A package for multivariate analysis using biplots (01 2010)
