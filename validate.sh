#!/bin/sh

xmllint --schema /tmp/schema/ie815.xsd /tmp/xml/ie815-invalid.xml
xmllint --schema /tmp/schema/ie815.xsd /tmp/xml/ie815-valid.xml
