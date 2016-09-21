# EMCS IE Document Validation Docker Image

This is a simple project that provides a utility for validation of EMCS IE Documents against the EMCS IE Document
Schemas.

## Background

This was developed as response to several cases of support cases for companies that integrate with SKAT EMCS B2B
gateway.

## Usage

Step 1: Put document in `xml` directory

Step 2: Extend `validate.sh` with validation instruction. See examples in `validate.sh`, e.g.:

```
xmllint --schema /tmp/schema/ie815.xsd /tmp/xml/ie815-valid.xml
```

Step 3: `docker-build.sh`

Step 4: `docker-run.sh`

Step 5: Check logs

Here is an example of a document that does not validate:

```
/tmp/xml/ie815-invalid.xml:17: element TraderExciseNumber: Schemas validity error : Element '{urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}TraderExciseNumber': This element is not expected. Expected is one of ( {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}Traderid, {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}TraderName ).
/tmp/xml/ie815-invalid.xml:39: element TraderExciseNumber: Schemas validity error : Element '{urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}TraderExciseNumber': This element is not expected. Expected is one of ( {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}Traderid, {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}TraderName, {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}StreetName, {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}StreetNumber, {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}Postcode, {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}City ).
/tmp/xml/ie815-invalid.xml fails to validate
<?xml version="1.0" encoding="UTF-8"?>
<ie:IE815 xmlns:ie="urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76" xmlns:tms="urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:TMS:V1.76">
    <ie:Header xmlns:tms="urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:TMS:V1.76">
        <tms:MessageSender>NDEA.DK</tms:MessageSender>
        <tms:MessageRecipient>NDEA.DK</tms:MessageRecipient>
        <tms:DateOfPreparation>2016-09-21</tms:DateOfPreparation>
        <tms:TimeOfPreparation>07:01:15</tms:TimeOfPreparation>
        <tms:MessageIdentifier xmlns="urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:TMS:V1.71">CHOFF38</tms:MessageIdentifier>
    </ie:Header>
    <ie:Body>
```

### Current IE Schema Version

V1.76
