# acorn

**Author:** Tychele N. Turner, Ph.D.

**License:** MIT License

**Current version:** 0.1.0

**Readme Date:** 10/23/2022

**Description:** Acorn is an R package that works with de novo variants (DNVs) already called using a DNV caller (e.g., https://github.com/TNTurnerLab/HAT). The toolkit is useful for extracting different types of DNVs and summarizing characteristics of the DNVs.

**Current Functions:"
Function to read in a file for use in many of the other functions in acorn.
```
readDNV = Reads in a de novo variant (DNV) file in the format of sample, 
chromosome, genomic position, reference allele, alternate allele, and 
then any optional columns. File must be tab-delimited and the file must 
have the data in the order listed above (i.e., sample is field 1, chromosome 
is field 2, genomic position is field 3, reference allele is field 4, and 
alternate allele is field 5. The file can either be a uncompressed file or 
can be a gz compressed file. Please note that the chromosome data should 
take the form with a "chr" at the beginning (e.g., chr1).
```

Functions to extract by variant type:
```
extractSNVs = Extracts single-nucleotide variants (SNVs) out from a DNV object
generated using the readDNV function.

extractINDELs = Extracts small insertions/deletions (INDELs) out from a DNV 
object generated using the readDNV function.

extractMNVs = Extracts multi-nucleotide variants (MNVs) out from a DNV object
generated using the readDNV function.

```

Functions to extract by genomic region:
```
extractAutosomes = Extracts the autosomes (chromosomes 1 to 22) out from a DNV 
object originally generated using the readDNV function. You can also run this 
on objects generated from extractSNVs, extractINDELs, or extractMNVs.

extractX = Extracts the X chromosome out from a DNV object originally generated 
using the readDNV function. You can also run this on objects generated from
extractSNVs, extractINDELs, or extractMNVs.

extractY = Extracts the Y chromosome DNVs out from a DNV object originally 
generated using the readDNV function. You can also run this on objects 
generated from extractSNVs, extractINDELs, or extractMNVs.
```

Summary characteristics of DNV data
```
calculateTiTvratio = This function will automatically grab only the SNVs from 
the DNV object for the calculation of the transition/transversion (Ti/Tv) ratio.

calculateDeletionInsertionratio = This function will automatically grab only 
the INDELs from the DNV object for the calculation of the deletion/insertion 
ratio.

calculateDeletionlengths = This function will automatically grab only the 
deletions from the DNV object for the calculation of the length of the 
deletions.

calculateInsertionLengths = This function will automatically grab only the 
insertions from the DNV object for the calculation of the length of the 
insertions.

calculateMNVlengths = This function will automatically grab only the 
multi-nucleotide variants (MNVs) from the DNV object for the calculation of 
the length of the MNVs.

```

Annotate and summarize CpG
```
annotateCpG = Extracts single-nucleotide variants (SNVs) out from a DNV 
object generated using the readDNV function and assigns whether they are at
a CpG site or not. This function also requires a pre-computed rda file for 
the CpG sites in the genome of interest. This is available for b38 of the
human genome at: .
```

Summary of DNV counts per individual. Also, useful to generate input for the parentalAgeObject
```
countsPerIndividual = This function will count the DNVs from a DNV object 
originally generated using the readDNV function. You can also run this on 
objects generated from extractSNVs, extractINDELs, or extractMNVs.
```

Parental age characteristics of DNVs
```
parentalAgeObject = Takes in a counts object that is either the result of
countsPerIndividual() or is already read into an object from a file that 
contains the following two fields: sample and number of DNVs. The parental 
age object should be read in and contain the following fields: sample, 
father age at child's birth, and mother age at child's birth.

parentalAge = This function will calculate the correlation between father's 
and mother's age at birth and DNV counts per individual, the results of the 
linear model taking the form: lm(formula = dnm_counts ~ fatherAge+motherAge, 
data = parentalAgeObject). Input required is output from the 
parentalAgeObject function in this package.

fatherAge = This function will calculate the correlation between father's 
age at birth and DNV counts per individual, the results of the linear model 
taking the form: lm(formula = dnm_counts ~ fatherAge, data = parentalAgeObject).
Input required is output from the parentalAgeObject function in this package.

motherAge = This function will calculate the correlation between mother's 
age at birth and DNV counts per individual, the results of the linear model 
taking the form: lm(formula = dnm_counts ~ motherAge, data = parentalAgeObject).
Input required is output from the parentalAgeObject function in this package.
```

