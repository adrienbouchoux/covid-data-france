# covid-data-france
Tool to extract daily COVID related figures in France

# Dependencies
This tool is written is using Ruby and and PostgreSQL. It is built to be executed in an UNIX system.

# Data source
The tool downloads the latest available data from the offical gouvernment source "DRESS" (irection de la recherche, des études, de l'évaluation et des statistiques), from the dataset called "Données hospitalières relatives à l'épidémie de COVID-19", resource "donnees-hospitalieres-classe-age-covid" (updated daily).

This tool only extract data from the official sources, make the sum of occurences over all the regions of the country.
