# redlist-plazi
Connecting the list of endangeoured vascular plants with the plazi database

Original Data: http://www.bafu.admin.ch/publikationen/publikation/01865/index.html?lang=de

Example of Data in PLazi: http://tb.plazi.org/GgServer/lodRdf/D6371E2EFFC95136E2B5FF7623A6FB85

The result of the transformation should link to the plazi data via the taxon Name (http://taxon-name.plazi.org/id/Animalia/Styphlus_eteocretus in the example).


The red-lsit status needs some terms that are not present in the vocabularies used by plati, we might use:

http://www.bbc.co.uk/ontologies/wo

including a link to conservation status

http://purl.org/ontology/wo/ConservationStatus

http://purl.org/ontology/wo/redListStatus
