#!/bin/bash
# Script author: Julian Rebel, github.com/jul-reb

if test -f "CalGen.cfg"; then
    source CalGen.cfg
else
    echo "CalGen.cfg required to run, not found, exiting."
    exit 1
fi

if test -f "datablob.json"; then
    rm -f datablob.json
    echo "Old datablob deleted, proceeding"
else
    echo "No datablob found, proceeding"
fi

for CountryCode in $CountryCodes
do
	echo "Getting holidays for $CountryCode in the year $YearNumber..."
    	curl -s $apitarget/$YearNumber/$CountryCode >> datablob.json
done

echo "date,localName,internationalName,countryCode,introductionYear" > output_$YearNumber.csv
cat datablob.json | jq '.[] | [.date, .localName, .name, .countryCode, .launchYear] | tostring' | sed -s 's/\"//g' | sed -s 's/\\//g' | sed -s 's/\[//g' | sed -s 's/\]//g' >> output_$YearNumber.csv
echo "File created at output_$YearNumber.csv. Enjoy!"
