#!/bin/sh

xmllint --noout --schema schema/ie815.xsd sample/ie815.xml
xmllint --noout --schema schema/ie818.xsd sample/ie818.xml
xmllint --noout --schema schema/ie810.xsd sample/ie810.xml
xmllint --noout --schema schema/ie813.xsd sample/ie813.xml
xmllint --noout --schema schema/ie819.xsd sample/ie819.xml
xmllint --noout --schema schema/ie825.xsd sample/ie825.xml
xmllint --noout --schema schema/ie837.xsd sample/ie837.xml
xmllint --noout --schema schema/ie871.xsd sample/ie871.xml

# Comment out to verify validation failure
# xmllint --noout --schema schema/ie815.xsd sample/ie815-invalid.xml
