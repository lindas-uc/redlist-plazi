# redlist-plazi
Connecting the list of endangeoured vascular plants with the plazi database

Original Data: http://www.bafu.admin.ch/publikationen/publikation/01865/index.html?lang=de

Example of Data in PLazi: http://tb.plazi.org/GgServer/lodRdf/D6371E2EFFC95136E2B5FF7623A6FB85

## Usage

In the `input` folder there are all the input files used during conversion. So there is the original .xlsx file and its converted form in .csv. And also there is a list of RDF prefix used for prettify the final output.

In the `output` folder there are the RDF files in Turtle serialization.

In the `lib` folder the latest bin file from a fork of RML library is present.

Launch `run.sh` to convert input files into RDF.

## Optional dependency

The last steps of `run.sh` involving `rdfcat` from Apache Jena library. You can find the instruction to add Jena CLI tools [here](https://jena.apache.org/documentation/tools/). If you don't want this dependency or you don't care about pretty Turtle, you can simply comment its call in `run.sh`.
