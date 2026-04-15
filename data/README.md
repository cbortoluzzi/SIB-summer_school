The wgs_runs_biodiversity_summer_school.csv file contains information about all species to be analysed during the Biodiversity Summer School.

These species are:
1. Anodonta anatina
2. Anodonta cygnea
3. Anodonta exulcerata
4. Bos taurus
5. Bison bonasus
6. Capra ibex
7. Gasterosteus aculeatus
8. Zymoseptoria tritici
9. Erebia cassioides
10. Tyto alba

For all species, but _Bison bonasus_, we selected 10 individuals with the highest read count. Selected individuals belong to the same BioProject and were produced using the same instrument model, instrument platform, and library strategy. 

For Capra ibex we have both RAD-Seq and WGS. Maybe we should keep only the WGS?

Regarding the genome assemblies: most species have a chromosome-level assembly, except: Tyto alba (maybe Tristan could share the T2T assembly they are working on?), Bison bonasus (well, this is a chromosome-level assembly, it's just that ENA considers it scaffold because scaffolding was done using the Bos taurus assembly), Anodonta cygnea (Alex is working on this, but I don't think she will have a chromosome-level assembly before June). 
