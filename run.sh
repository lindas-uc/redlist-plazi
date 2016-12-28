#!/bin/bash

java -jar lib/RML-Processor-0.3x100.jar -m cat-red-list.ttl -o output/cat.ttl
java -jar lib/RML-Processor-0.3x100.jar -m red-list.ttl -o output/plant.ttl

# No white line
sed -i '/^$/d' output/cat.ttl
sed -i '/^$/d' output/plant.ttl

# No xsd:string
sed -i 's|\^\^<http://www.w3.org/2001/XMLSchema#string>||g' output/cat.ttl
sed -i 's|\^\^<http://www.w3.org/2001/XMLSchema#string>||g' output/plant.ttl

# Transform string in URI
sed -i -E 's|conservationStatusXXX> "([A-Z][A-Z])"|conservationStatus> <http://taxon-name.plazi.org/id/conservationStatus/\1>|g' output/plant.ttl
sed -i -E 's|hasParentNameXXX> "([^"]+)"|hasParentName> <http://taxon-name.plazi.org/id/Plantae/\1>|g' output/plant.ttl

# Sort for readabilty
sort -u output/cat.ttl -o output/cat.ttl
sort -u output/plant.ttl -o output/plant.ttl

# Convert in Turtle
cat input/prefix output/cat.ttl > output/temp-cat.ttl
cat input/prefix output/plant.ttl > output/temp-plant.ttl

rdfcat -out Turtle output/temp-cat.ttl > output/cat.ttl
rdfcat -out Turtle output/temp-plant.ttl > output/plant.ttl

rm output/temp-*
