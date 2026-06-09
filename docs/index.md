# Computing Genomic Essential Biodiversity Variables

**Biodiversity Bioinformatics Summer School 2026**  
**de.NBI / SIB Summer School – Biodiversity**  
**21–26 June 2026 | Siegen, Germany**

Welcome to the project page for **Topic 3: Computing Genomic Essential Biodiversity Variables**.

This project introduces a practical biodiversity genomics workflow, from sequence data processing to the interpretation of genomic metrics. Participants will work in small groups on public whole-genome sequencing data and will use them to explore population genomic parameters, being genetic diversity, population structure, inbreeding, and effective population size.

The project has a second aim that is central to the week. Participants will examine how genomic results can be communicated to people who may not have a genomics background, such as conservation practitioners, managers, and policy-makers. To support this exercise, each group will design a simple interpretation framework, provisionally called a **GenoScore**.

The GenoScore is a working concept for the summer school. It is intended to help participants think carefully about how several genomic metrics can be combined into a clear message without losing the biological meaning of the results. The aim is comparable to the way DNA barcoding can provide an accessible message about species presence or absence, although genomic indicators usually require more interpretation because they describe more complex events, like genetic isolation, inbreeding and inbreeding depression, and long-term population viability.

The project is designed as a hands-on activity. Participants will run or inspect reproducible analyses, discuss analytical choices, interpret outputs, and prepare a short final presentation.

---

## Contents

- [Trainers](#trainers)
- [Project aim](#project-aim)
- [From genomic metrics to a GenoScore](#from-genomic-metrics-to-a-genoscore)
- [Provisional GenoScore concept](#provisional-genoscore-concept)
- [Genomic metrics used for the GenoScore](#genomic-metrics-used-for-the-genoscore)
- [Skills and experience](#skills-and-experience)
- [How we will work](#how-we-will-work)
- [Main student challenge](#main-student-challenge)
- [Provisional programme](#provisional-programme)
- [Day 1 — Sunday: Welcome and orientation](#day-1--sunday-welcome-and-orientation)
- [Day 2 — Monday: From biodiversity questions to genomic analyses](#day-2--monday-from-biodiversity-questions-to-genomic-analyses)
- [Day 3 — Tuesday: From raw reads to mapped data](#day-3--tuesday-from-raw-reads-to-mapped-data)
- [Day 4 — Wednesday: From mapped reads to genomic variation](#day-4--wednesday-from-mapped-reads-to-genomic-variation)
- [Day 5 — Thursday: From genomic metrics to a policy-facing GenoScore](#day-5--thursday-from-genomic-metrics-to-a-policy-facing-genoscore)
- [Day 6 — Friday: Presenting results](#day-6--friday-presenting-results)
- [Candidate datasets](#candidate-datasets)
- [Planned software](#planned-software)
- [Remote talks](#remote-talks)
- [Expected outputs](#expected-outputs)
- [Final presentation](#final-presentation)
- [Before the summer school](#before-the-summer-school)
- [Background reading](#background-reading)
- [Questions during the week](#questions-during-the-week)
- [Pre-course skills survey](#pre-course-skills-survey)

---

## Trainers

**Dr Tristan Cumer**  
Department of Ecology and Evolution, University of Lausanne, Switzerland

**Dr Chiara Bortoluzzi**  
Environmental Bioinformatics, SIB Swiss Institute of Bioinformatics, Switzerland

**Dr Christian de Guttry**  
Environmental Bioinformatics, SIB Swiss Institute of Bioinformatics, Switzerland

---

## Project aim

Essential Biodiversity Variables are standardized biological measurements used to describe biodiversity change across time, space, and levels of biological organization. They are intended to help connect biodiversity observations with indicators that can support monitoring, reporting, and policy discussions.

In this project, we focus on genomic information that can inform genetic components of biodiversity. Participants will use whole-genome sequencing (WGS) data to estimate and interpret population genomic metrics related to genetic diversity, population differentiation, inbreeding, and effective population size.

The technical aim is to understand the logic of a population genomics workflow. The interpretive aim is to examine how genomic evidence can be converted into a message that remains scientifically sound while being understandable to a non-specialist audience.

---

## From genomic metrics to a GenoScore

Biodiversity genomics can provide information that is directly relevant to conservation and management. However, the outputs of genomic analyses are often difficult to communicate outside the genomics community. Metrics such as nucleotide diversity, heterozygosity, population differentiation, runs of homozygosity, and effective population size are informative, but their meaning is not immediately clear to many decision-makers.

During the summer school, participants will therefore estimate genomic metrics and then design a simple interpretation framework. We refer to this provisional framework as a **GenoScore**.

The GenoScore should translate genomic evidence into a small number of categories, for example from **1 to 4**. The score should be simple enough to communicate, but it must be based on explicit biological reasoning. It should also make uncertainty visible, especially when datasets are small, unevenly sampled, or limited to part of the genome.

The aim is not to create a universal genomic index during one week. The aim is to let participants examine the scientific and communication challenges involved in turning genomic metrics into a policy-relevant information.

---

## Provisional GenoScore concept

Each group will propose a GenoScore that summarizes the genomic status of the studied population or species.

The score should be clear enough for a non-specialist audience, but it should remain traceable to the underlying metrics.

| GenoScore | Interpretation | Possible policy-facing message |
|---|---|---|
| **4** | Genomic status appears favourable | The available genomic evidence suggests relatively high genetic diversity, limited inbreeding, and no clear genomic warning signal. Continued monitoring remains appropriate. |
| **3** | Some concern | One or more genomic metrics suggest reduced diversity, population subdivision, or early warning signs. Increased monitoring may be justified. |
| **2** | Elevated concern | Several genomic metrics suggest reduced genetic viability, increased inbreeding, fragmentation, or low effective population size. Conservation attention may be needed. |
| **1** | High concern | The available genomic evidence suggests severe loss of diversity, strong inbreeding, very low effective population size, or marked isolation. Management actions need to be put in place. |

Groups may modify this structure. They should explain which metrics they used, how each metric influenced the score, whether all metrics were given the same weight, and how uncertainty affected the final interpretation.

The GenoScore should not be treated as a simple average unless the group can justify that choice. In some cases, a single warning signal, such as high inbreeding or very low effective population size, may be enough to lower the final score even when other metrics appear less concerning.

---

## Genomic metrics used for the GenoScore

Each group will estimate and interpret five population genomic metrics. These metrics represent complementary aspects of the genomic status of a population or species.

| Metric | Biological meaning | Possible relevance for the GenoScore |
|---|---|---|
| **Genome-wide genetic diversity** | The amount of genetic variation within the sampled population, measured for example through nucleotide diversity or genome-wide heterozygosity. | Low diversity may reflect bottlenecks, small population size, or reduced adaptive potential. |
| **Heterozygosity or allelic richness** | Individual-level or population-level variation at polymorphic sites. | Reduced heterozygosity or allelic richness may indicate loss of variation or increased relatedness among individuals. |
| **Population structure or genetic differentiation** | The degree of separation among sampled groups or populations. | Strong structure may indicate isolation, fragmentation, or differentiated management units. |
| **Inbreeding or runs of homozygosity** | Genomic evidence of relatedness among individuals often indicative of recent demographic decline. | High inbreeding may indicate small population size, recent bottlenecks, or reduced fitness potential. |
| **Effective population size** | The number of breeding individuals contributing genetically to future generations. | Low effective population size suggests stronger genetic drift and continued loss of variation over time. |

The above metrics should be interpreted together. A useful GenoScore framework should explain whether the metrics tell a consistent story or whether they provide mixed evidence.

---

## Skills and experience

Participants should have basic experience with the Linux or UNIX command line and basic experience with R and/or python. The project also requires a willingness to work in small groups, help each other out when errors occur, and discuss analytical decisions.

Prior experience with sequencing technologies and file formats such as FASTQ, FASTA, BAM, and VCF will be useful, but it is not required. A basic understanding of population genetics will also help participants interpret the results.

---

## How we will work

The project follows a complete analysis and interpretation pathway, from a biological question to a policy-facing message.

**Conservation or management question**  
↓  
**Dataset selection**  
↓  
**Raw data inspection and quality control**  
↓  
**Read trimming**  
↓  
**Read mapping to a reference genome**  
↓  
**BAM processing and alignment checks**  
↓  
**Variant calling or genotype-likelihood-based analysis**  
↓  
**Variant filtering and post-processing**  
↓  
**Estimation of five genomic metrics**  
↓  
**Biological interpretation of each metric**  
↓  
**Design of a GenoScore or equivalent framework**  
↓  
**Policy-facing message**  
↓  
**Final group presentation**

Each group will work with a selected species dataset. To keep the work feasible during the week, the analyses may use a reduced dataset, such as a selected chromosome, a limited genomic region, or a subset of individuals.

The aim of the above workflow is for the participants to generate genomic metrics. The final task is broader. Each group must decide how those metrics can be translated into a simple, transparent, and biologically justified message for non-specialist decision-makers.

---
## Main student challenge

At the end of the project, each group should be able to answer two linked questions.

First, what does the genomic data suggest about the status of the studied population or species?

Second, how can that result be communicated clearly to a policy-maker without losing the biological meaning?

To answer these questions, each group will design a simple interpretation framework. This may be a GenoScore from 1 to 4, a traffic-light system, a small dashboard, or another format proposed by the group.

The framework should be understandable to a non-specialist audience. It should be based on the five genomic metrics estimated during the project. It should also state the assumptions, thresholds, and uncertainty behind the final message.

The purpose of the exercise is not to produce a definitive indicator. It is to understand the difficulty of translating genomic evidence into information that can support biodiversity monitoring and policy discussion.

---

## Provisional programme

| Day | Main focus | Activities |
|---|---|---|
| **Sunday, 21 June** | Arrival and welcome | Arrival, registration, dinner, welcome session, and short introduction to trainers and projects. |
| **Monday, 22 June** | Orientation and project start | General introduction to computing facilities, introduction to the four summer school topics, group formation, and first project work session. |
| **Tuesday, 23 June** | From data to alignments | Project work, invited lecture, quality control, trimming, read mapping, and alignment checks. |
| **Wednesday, 24 June** | From alignments to genomic variation | Project work, invited lecture, variant calling or genotype-likelihood approaches, and social activity. |
| **Thursday, 25 June** | From genomic metrics to a GenoScore | Project work, invited lecture, interpretation of genomic metrics, and preparation of policy-facing communication frameworks. |
| **Friday, 26 June** | Synthesis and presentation | Group presentations, discussion, wrap-up, feedback, lunch, and departure. |

---

The programme may change depending on the participants skills.

## Day 1 Sunday: Welcome and orientation

The first evening is dedicated to arrival, registration, and informal introductions. The aim is to establish a shared working environment before the technical work begins.

Participants will meet the trainers and other summer school participants, receive general information about the week, and hear how the mini-project format will work.

By the end of the evening, participants should understand the structure of the week, the role of the trainers, the four summer school topics, and the expectations for the final presentations.

---

## Day 2 Monday: From biodiversity questions to genomic analyses

Monday introduces the scientific and technical logic of the project.

The day begins with the general computing setup and the introduction of the four summer school topics. For Topic 3, we will discuss how genomic data can contribute to biodiversity monitoring and how genomic metrics can be interpreted in relation to Essential Biodiversity Variables, genetic indicators, and policy-facing communication.

The main task is to move from a broad question to a feasible analysis plan. Groups will consider what can be learned from the selected dataset, which metrics are appropriate, and how the results might later be translated into a GenoScore.

Guiding questions include how much genetic diversity is present in the sampled individuals, whether the samples show population structure, whether there is evidence of inbreeding, and whether the available data can support a conservation or management interpretation.

By the end of Monday, each group should have a dataset, a biological context, an initial analysis question, and a first view of how the final communication framework could be developed.

---

## Day 3 Tuesday: From raw reads to mapped data

Tuesday focuses on the first part of the genomic workflow: raw data quality control, trimming, alignment, and alignment checks.

Participants will inspect sequencing reads, identify common quality issues, and discuss why trimming and mapping parameters can affect downstream analyses. Reads will then be mapped to a reference genome, and the resulting BAM files will be examined.

The main concepts for the day include read quality, adapter contamination, sequencing depth, mapping rate, duplicate reads, reference genome choice, and the use of reduced genomic subsets for training.

Planned tools for this part include `fastp`, `bwa-mem2`, `samtools`, `samblaster`, `sambamba`, and `bamtools`.

By the end of Tuesday, each group should have produced or inspected mapped BAM files and generated basic alignment summaries. Groups should also begin noting which quality-control results may affect the reliability of their genomic metrics and GenoScore.

---

## Day 4 Wednesday: From mapped reads to genomic variation

Wednesday focuses on genomic variation.

Depending on the dataset and sequencing depth, groups will consider either variant calling, which produces filtered VCF files, or genotype-likelihood-based approaches, which can be more suitable for lower-coverage data.

Participants will discuss why variant calling involves a series of decisions. These decisions may include coverage filters, missing data thresholds, mapping quality, allele frequency filters, and assumptions about the sampled individuals.

The main concepts for the day include SNPs, genotypes, genotype likelihoods, variant filtering, missing data, minor allele frequency, low-coverage data, and reproducibility.

Possible tools include `GATK`, `ANGSD`, `bcftools`, `vcftools`, and `htslib`.

By the end of Wednesday, each group should understand which genomic variation approach is most suitable for its dataset. Each group should also identify which genomic metrics can be estimated with reasonable confidence and which metrics require caution.

---

## Day 5 Thursday: From genomic metrics to a policy-facing GenoScore

Thursday focuses on interpretation and communication.

By this stage, each group should have produced or inspected the main genomic outputs. The task is now to decide what these results mean biologically and how they could be communicated to a non-specialist audience.

Groups will first interpret each metric separately. They will consider whether genetic diversity appears high, intermediate, or low in relation to available reference points, whether there is evidence of population structure or isolation, whether inbreeding is detectable, and whether effective population size suggests a potential risk of genetic drift.

The second task is to combine these interpretations into a simple policy-facing framework, such as a GenoScore from 1 to 4. Each group should define the meaning of each category, the biological reasoning behind the score, the role of each metric, and the way uncertainty affects the final message.

By the end of Thursday, each group should have both a scientific interpretation and a communication product ready for the final presentation.

---

## Day 6 Friday: Presenting results

Friday is dedicated to synthesis.

Each group will present its mini-project results, including the biological question, dataset, workflow, main outputs, interpretation, limitations, and proposed GenoScore or equivalent communication framework.

The presentation should explain the species or population analysed, the conservation or management context, the data used, the main analytical steps, and the results for the five genomic metrics. It should then show how these results were translated into a GenoScore or related communication framework.

The final message should be understandable to a non-specialist audience while remaining traceable to the genomic evidence. Groups should also explain the main limitations of their analysis and identify what additional data would be needed for a stronger conclusion.

---

## Candidate datasets

The datasets used during the summer school will be selected from public whole-genome sequencing projects for species with European sampling and available reference genomes.

| Species | Whole-genome sequencing data | Reference genome | Notes |
|---|---|---|---|
| *Anodonta anatina* | https://www.ebi.ac.uk/ena/browser/view/PRJEB86155 | https://www.ebi.ac.uk/ena/browser/view/GCA_980915975.2 | Freshwater mussels, with a large dataset. |
| *Anodonta exulcerata* | https://www.ebi.ac.uk/ena/browser/view/PRJEB86155 | https://www.ebi.ac.uk/ena/browser/view/GCA_980915975.2 | Freshwater mussels, with a large dataset. |
| *Bison bonasus* | https://www.ebi.ac.uk/ena/browser/view/PRJEB71066 | https://www.ebi.ac.uk/ena/browser/view/GCA_963879515.1 | European bison, with a small dataset and strong conservation relevance. |
| *Bos taurus* | https://www.ebi.ac.uk/ena/browser/view/PRJEB83441 | To be replaced! | Domestic cattle, with many public genomic resources. |
| *Capra ibex* | https://www.ebi.ac.uk/ena/browser/view/PRJNA514886 | https://www.ebi.ac.uk/ena/browser/view/GCA_054642885.1 | Alpine ibex, with clear conservation relevance. |
| *Erebia cassioides* species | https://www.ebi.ac.uk/ena/browser/view/PRJEB54919 | https://www.ebi.ac.uk/ena/browser/view/GCA_976986335.1 | Butterfly datasets, with many individuals and reference choice to be confirmed. |
| *Gasterosteus aculeatus* | https://www.ebi.ac.uk/ena/browser/view/PRJNA566094 | https://www.ebi.ac.uk/ena/browser/view/GCA_964276395.1 | Three-spined stickleback. |
| *Tyto alba* | https://www.ebi.ac.uk/ena/browser/view/PRJNA925445 | https://www.ebi.ac.uk/ena/browser/view/GCA_018691265.1 | Barn owl, with a limited number of individuals. |
| *Zymoseptoria tritici* | https://www.ebi.ac.uk/ena/browser/view/PRJNA596434 | https://www.ebi.ac.uk/ena/browser/view/GCA_000219625.1 | Fungal pathogen, with a large public dataset. |

For the training, we will use a reduced dataset for each species to keep the analyses feasible within the available time. This may involve a selected chromosome, a limited genomic region, or a reduced number of individuals.

---

## Planned software

The final software list may be adjusted depending on the selected datasets and computing environment.

| Step | Candidate tools |
|---|---|
| Read quality control and trimming | `fastp` |
| Sequence alignment and BAM processing | `bwa-mem2`, `samblaster`, `samtools`, `sambamba`, `bamtools` |
| Variant calling or genotype-likelihood analysis | `GATK`, `ANGSD`, `htslib` |
| Variant post-processing | `bcftools`, `vcftools` |
| Downstream analyses | Tools to be selected according to the final metrics and datasets |

Downstream analyses may include estimates of genetic diversity, heterozygosity, population structure, genetic differentiation, inbreeding, runs of homozygosity, and effective population size.

---

## Remote talks

Two remote talks will provide the conceptual frame for the project.

### Talk 1: Essential Biodiversity Variables and genomic data

This talk will introduce the Essential Biodiversity Variable concept and explain how genomic data can contribute to biodiversity monitoring. It will cover the purpose of standardised biodiversity measurements, the position of genetic composition within EBV frameworks, and the possible role of genomic analyses in monitoring change.

### Talk 2: From genomic metrics to policy indicators

This talk will focus on the relationship between genomic metrics, Essential Biodiversity Variables, and policy indicators. It will examine why genomic results are difficult to communicate, how a GenoScore might simplify the message, and where such simplification may create risks. The talk will also address uncertainty, limitations, and responsible interpretation.

---

## Expected outputs

By the end of the week, each group should have a documented analysis workflow, quality-control summaries, alignment or variant-processing summaries, estimates or interpretations of five genomic metrics, and a biological interpretation of the results.

Each group should also propose a GenoScore or equivalent communication framework. This framework should explain how the genomic evidence was translated into a simple message, what assumptions were made, and which limitations affect interpretation.

The final presentation should therefore include both technical results and a policy-facing interpretation. The aim is to show how genomic data can be transformed into biodiversity information through a transparent and reproducible workflow.

---

## Final presentation

Each group will present its mini-project results on Friday.

The presentation should begin with the biological context, including the species or population analysed and the reason why it may be relevant for conservation, management, bioeconomy, or policy. It should then describe the data, the workflow, and the main quality-control results.

The central part of the presentation should report the five genomic metrics. Groups should explain what each metric showed, whether the metrics were consistent, and which results were uncertain or preliminary.

The presentation should then introduce the GenoScore or equivalent framework. Groups should explain how the score was defined, how the metrics contributed to it, and what biological reasoning supports the final category.

The final slide should be written for a non-specialist decision-maker. It should state what the result suggests, what level of concern is justified, and what monitoring or management step could be considered. It should also state the main limitation of the analysis.

---

## Before the summer school

Before arriving, participants are encouraged to revise basic command-line navigation and basic R syntax. If access to the computing environment is provided in advance, participants should also confirm that they can log in.

Participants are also encouraged to read the short background material on Essential Biodiversity Variables, genetic indicators, and the use of genomic data in biodiversity monitoring.

A simple command-line self-check is provided below.

    pwd
    ls
    cd
    mkdir test_directory
    cd test_directory
    echo "Hello summer school" > test.txt
    cat test.txt
    rm test.txt
    cd ..
    rmdir test_directory
    rm -r test_directory

---

## Background reading

Participants are encouraged to read or browse the following resources before the summer school.

| Topic | Resource |
|---|---|
| Essential Biodiversity Variables | GEO BON. What are Essential Biodiversity Variables? https://geobon.org/ebvs/what-are-ebvs/ |
| Genetic composition | GEO BON Genetic Composition Working Group. https://geobon.org/ebvs/working-groups/genetic-composition/ |
| Genetic EBVs | Hoban et al. 2022. Global genetic diversity status and trends: towards a suite of Essential Biodiversity Variables for genetic composition. *Biological Reviews*. https://doi.org/10.1111/brv.12852 |
| Genetic diversity indicators | Genetic Diversity Indicators guidelines for the Kunming-Montreal Global Biodiversity Framework. https://ccgenetics.github.io/guidelines-genetic-diversity-indicators/ |
| Policy indicators | Kunming-Montreal Global Biodiversity Framework indicator repository. https://www.gbf-indicators.org/ |

---

## Questions during the week

Participants are encouraged to ask questions early. Many problems in genomics workflows are easier to solve when they are detected soon, especially issues related to file paths, software versions, sample names, reference genome files, and memory requirements.

When asking for help, participants should try to include the command that was run, the error message, the input file, the expected output file, and the working folder.

Troubleshooting is part of the training. It is also part of reproducible genomics.

---

## Pre-course skills survey

The following questions can be used to understand participants' experience before the course.

| Topic | Question | Response options |
|---|---|---|
| Command line | With what frequency have you worked with the command-line interface, such as Linux or UNIX? | Never, occasionally, frequently, daily |
| R | How do you evaluate your level in R? | Never used, novice, beginner, intermediate, advanced |
| Python | How do you evaluate your level in Python? | Never used, novice, beginner, intermediate, advanced |
| Whole-genome sequencing data | What is your experience in working with whole-genome sequencing data? | No experience, rarely, frequently, daily usage |
| Genomic data formats | How familiar are you with data formats such as FASTQ, FASTA, BAM, and VCF? | Novice, beginner, intermediate, advanced |
| Population genomics | What is your level of understanding of population genomics principles, such as genetic diversity, inbreeding, population structure, and effective population size? | None, novice, beginner, intermediate, advanced |
| Workflow management systems | Do you have experience in any workflow management systems? | Snakemake, Nextflow, other, none of the above |
