# EDI Data

## Description
This repository contains the metadata, data, and source files used to scrape
data from [EDI](https://environmentaldatainitiative.org/).

## Download
```
> git clone https://github.com/danish778866/edi_data.git
> cd edi_data/data
> cat edi_data_split_* > edi_data.zip
> md5sum edi_data.zip # This should be 608d6e75bef7e3df7c676750e5c83c1c
> unzip edi_data.zip
```

## Organization
The organization of this repository is as follows:
* `src`: The source files used to scrape data from EDI.
* `metadata`: The metadata used to scrape data from EDI.
* `data`: The scraped EDI data. Since this is big file, it has been split into
  chunks that can be combined.

## Staistics
1. **Number of packages:** _6219_.
2. **Number of CSV files across all packages:** _26977_.
3. **Total size of data:** _70GB_.
