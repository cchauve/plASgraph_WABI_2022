# plASgraph_WABI_2022

PlASgraph is a tool for the accurate classification of bacterial contigs.

This repository contains all scripts and data used to perform the analyses described in the plASgraph publication.

The main repository is available at <https://github.com/cchauve/plASgraph>.

### Training data

A list of all samples used for training of the species-specific models and species-agnostic model is available in the data/ folder:
 - data/train_data_species_specific.csv
 - data/train_data_species_agnostic.csv

Ground truth labels for all samples are provided in the respective /data/alignment_files/SPECIES/ folders.

### Data availability

All bacterial sequencing data were retrieved from the following publications:
  - Arredondo-Alonso, et al. (2018), doi: 10.1099/mgen.0.000224
  - Shaw, et al. (2021), doi: 10.1126/sciadv.abe3868
  - Acman, et al. (2022), doi: 10.1038/s41467-022-28819-2
  - Little, et al. (2019), doi: 10.1128/MRA.00735-19
  - Shwed, et al. (2021), doi: 10.1128/MRA.00403-21
  - Witherall, et al. (2019), doi: 10.1128/MRA.00392-19
