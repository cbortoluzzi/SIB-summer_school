## Data

The **wgs_runs_biodiversity_summer_school.csv** file contains information about the set of species we will analyse during the Biodiversity Summer School. Information are as follow:
1. run_accession (e.g., ERR, SRR).
2. tax_id: NCBI Taxonomy ID of the species as retrieved from https://www.ncbi.nlm.nih.gov/taxonomy.
3. scientific_name: scientific name of the species. This is the latin name.
4. study_accession: BioProject (e.g., PRJEBXXX). For more information: https://www.ncbi.nlm.nih.gov/bioproject/docs/faq/#what-is-a-bioproject. 
5. sample_accession: BioSample (e.g., SAMEAXXX). For more information: https://www.ebi.ac.uk/training/online/courses/biosamples-quick-tour/what-is-biosamples/.
6. instrument_platform: instrument platform used in the sequencing experiment. For more information: https://ena-docs.readthedocs.io/en/latest/submit/reads/webin-cli.html.
7. instrument_model: model used for sequencing. For more information: https://ena-docs.readthedocs.io/en/latest/submit/reads/webin-cli.html.
8. library_strategy: sequencing technique intended for the library . In our case this is whole-genome sequencing (WGS) and RAD-Seq. For more information: https://ena-docs.readthedocs.io/en/latest/submit/reads/webin-cli.html.
9. library_source: type of source material being sequenced. In our case this is GENOMIC. For more information: https://ena-docs.readthedocs.io/en/latest/submit/reads/webin-cli.html.
10. library_selection: method used to select and/or enrich the material being sequenced. For more information: https://ena-docs.readthedocs.io/en/latest/submit/reads/webin-cli.html.
11. read_count: number of readds.
12. fastq_ftp: FTP link to the FASTQ file(s).

The species included in this dataset are:
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

For all species, but _Bison bonasus_, we selected 15 individuals with the highest read count. Selected individuals belong to the same BioProject and were produced using the same instrument model, instrument platform, and library strategy. 

For _Capra ibex_ we have both RAD-Seq and WGS.

The **genome_assemblies_biodiversity_summer_school.csv** file contains information about the reference genome to be used for each species. For each reference genome, we specify its quality (scaffold, chromosome) and whether the assembly is the one of the target species. For instance, for _Anodonta anatina_ the reference genome to be used is the one of _Anodonta cygnea_, which is a sister species. 
