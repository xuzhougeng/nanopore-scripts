
> This pipeline was modified from arq5x/nanopore-scripts

I use this tools to assess the error profile of raw ONT reads and corrected ONT read 

Dependencies:

- minimap2 
- samtools
- R
  - ggplot2(for plot-alignment-stats.R)
- python 2.7
  - pysam 0.8.1 (for count-errors.py)
