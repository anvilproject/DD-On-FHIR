#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

#txoption="-tx n/a"

# The NLM server is currently running at R3 and thus not compatible with our current efforts
NLM_TERM="https://cts.nlm.nih.gov/fhir/"

# This is the system we'll likely use in the immediate future
ONTO="https://r4.ontoserver.csiro.au/fhir"

#txoption="-tx $ONTO"
echo "$txoption"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	echo java -Djava.awt.headless=true -jar $publisher -ig . $txoption $*
	java -Djava.awt.headless=true -jar $publisher -ig . $txoption $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -Djava.awt.headless=true -jar $publisher -ig . $txoption $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi
