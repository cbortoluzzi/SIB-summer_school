## Data

The **wgs_runs_biodiversity_summer_school.csv** file contains information about the set of species we will analyse during the Biodiversity Summer School. Information are as follow:
1. run_accession (e.g., ERR, SRR).
2. tax_id: taxon ID of the species.
3. scientific_name: scientific name of the species. This is the latin name.
4. study_accession: BioProject (e.g., PRJEBXXX).
5. sample_accession: BioSample (e.g., SAMEAXXX).
6. instrument_platform: instrument platform used in the sequencing experiment (e.g., ILLUMINA, ONT, ...).
7. instrument_model: model used for sequencing (e.g. Illumina NovaSeq X Plus, Illumina HiSeq 4000, ...).
8. library_strategy: sequencing technique intended for the library . In our case this is whole-genome sequencing (WGS) and RAD-Seq.
9. library_source: type of source material being sequenced. In our case this is GENOMIC.
10. library_selection: method used to select and/or enrich the material being sequenced.
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

For Cap__ra ibex we have both RAD-Seq and WGS.

The **genome_assemblies_biodiversity_summer_school.csv** file contains information about the reference genome to be used for each species. For each reference genome, we specify its quality (scaffold, chromosome) and whether the assembly is the one of the target species. For instance, for _Anodonta anatina_ the reference genome to be used is the one of _Anodonta cygnea_, which is a sister species. 
