# acorn

**Author:** Tychele N. Turner, Ph.D.

**License:** MIT License

**Current version:** 0.1.0

**Readme Date:** 10/23/2022

**Description:** Acorn is an R package that works with de novo variants (DNVs) already called using a DNV caller (e.g., https://github.com/TNTurnerLab/HAT). The toolkit is useful for extracting different types of DNVs and summarizing characteristics of the DNVs.

**Current Functions:"
Function to read in a file for use in many of the other functions in acorn.
```
readDNV = Reads in a de novo variant (DNV) file in the format of sample, chromosome, genomic position, reference allele, alternate allele, and then any optional columns. File must be tab-delimited and the file must have the data in the order listed above (i.e., sample is field 1, chromosome is field 2, genomic position is field 3, reference allele is field 4, and alternate allele is field 5. The file can either be a uncompressed file or can be a gz compressed file. Please note that the chromosome data should take the form with a "chr" at the beginning (e.g., chr1).
```

Functions to extract by variant type:
```
extractSNVs

extractINDELs

extractMNVs

```

Functions to extract by genomic region:
```
extractAutosomes

extractX

extractY
```

Summary characteristics of DNV data
```
calculateTiTvratio

calculateDeletionInsertionratio

calculateDeletionlengths

calculateInsertionLengths

calculateMNVlengths

```

Annotate and summarize CpG
```
annotateCpG
```

Summary of DNV counts per individual. Also, useful to generate input for the parentalAgeObject
```
countsPerIndividual
```

Parental age characteristics of DNVs
```
parentalAgeObject

parentalAge

fatherAge  

motherAge 
```

