#!/bin/bash 
set -e 
set -o pipefail
set -u

# Required
# - minimap2
# - samtools 
# - pysam
# - R
#   - ggplot2

GENOME=$1
ONTREADS=$2
STUB="myreads"

# align reads to reference genome with minimap2
minimap2 -ax map-ont -t 20  $GNOME $ONTREADS | samtools sort -@ 20 > $STUB.bam

# profile the errors in the alignment
python count-errors.py $STUB.bam > $STUB.profile

# plot the error profile with R
Rscript plot-alignment-stats.R $STUB.profile
