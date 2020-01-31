# EMCS B2B Web Services Test Data

[![Build Status](https://travis-ci.com/skat/emcs-b2b-ws-test-data.svg?token=pXpLRS1qCgHe3KVdbFyA&branch=master)](https://travis-ci.com/skat/emcs-b2b-ws-test-data) ![EUXSD](https://img.shields.io/badge/EC%20DGTAXUD%20EMCS%20PHASE3%20EMCS-2.02-green.svg)

### Table of contents

* [Preface](#preface)
* [Test Data](#test-data)
  * [Test Entities](#test-entities)
  * [Sample Documents](#sample-documents)
* [Validating IE Documents](#validating-ie-documents)
  * [Using Command Line Validation](#using-command-line-validation)
  * [Using Docker Container](#using-docker-container)

## Preface

This repository provides:

* Test data for developing and testing solutions that integrate with SKAT's EMCS System
* Instructions and tools for validating IE documents

The sample documents provided herein comply with **EC DGTAXUD EMCS PHASE3 EMCS V2.02** schemas.

## Test Data

SKAT provides a test system that runs all EMCS B2B Web Services and allows companies (and their system integrators) to
develop and test solutions that integrate with SKAT's EMCS System. This test system is pre configured with
test data for the company with central registration number (CVR) 30808460 and a set of Authorized Tax Warehouses, 
Consignees, and Consignors. 

SKAT Help Desk provides details with regards to the X.509 certificate that identifies this CVR number (30808460) *and* 
is authorized to communicate with the EMCS B2B Web Services in test system.

The test system is pre configured with **Authorized Tax Warehouses**, **Consignees**, and **Consignors** that all have 
delegated authorizations (roles) to the company with CVR 30808460. Consequently, the `VirksomhedIdentifikationStruktur` part in the
SOAP request must reflect this configuration by setting the value `30808460` in the field `VirksomhedSENummerIdentifikator` 
and the **Excise Number** in the field `AfgiftOperatoerPunktAfgiftIdentifikator`.

**Example**: A SOAP Request with **Excise Number** = DK31175143300

```xml
<VirksomhedIdentifikationStruktur>
  <Indberetter>
    <VirksomhedSENummerIdentifikator>30808460</VirksomhedSENummerIdentifikator> 
  </Indberetter>
  <AfgiftOperatoerPunktAfgiftIdentifikator>DK31175143300</AfgiftOperatoerPunktAfgiftIdentifikator> 
</VirksomhedIdentifikationStruktur>
```

The available Authorized Tax Warehouses, Consignees, and Consignors are documented in the following sections.

**Important Notes**: 

* The test material reflects a transaction between to Danish economical operators where as in production the other party is always another EU Member State.
* In the test environment all fields with dates and times must be set to GMT time. The production, however, runs in CET time.


### Test Entities

#### Authorized Warehouse Keeper DK31175143300

---

**Excise Number**: DK31175143300

**Role**: Authorized Warehouse Keeper

**Authorized Product Types**: E, B

**Address Information**

```xml
<TraderName>eService FKT-TEST BLAA 0013</TraderName>
<StreetName>Silkeborgvej</StreetName>
<StreetNumber>8</StreetNumber>
<Postcode>8000</Postcode>
<City>Århus C</City>
```

**Tax Warehouse**: DK31175143301

**Address of Tax Warehouse:**

```xml
<TraderName>eService FKT-TEST BLAA 0013</TraderName>
<StreetName>Silkeborgvej</StreetName>
<StreetNumber>9</StreetNumber>
<Postcode>8000</Postcode>
<City>Århus C</City>
```

#### Authorized Warehouse Keeper DK31174279300

---

**Excise Number**: DK31174279300

**Role**: Authorized Warehouse Keeper

**Authorized Product Types**: S

**Address Information**

```xml
<TraderName>eService FKT-TEST-HVID-0025</TraderName>
<StreetName>Nyborgvej</StreetName>
<StreetNumber>123</StreetNumber>
<Postcode>5220</Postcode>
<City>Odense SØ</City>
```

**Tax Warehouse**: DK31174279301

**Address of Tax Warehouse:**

```xml
<TraderName>eService FKT-TEST-HVID-0025</TraderName>
<StreetName>Østbanegade</StreetName>
<StreetNumber>123</StreetNumber>
<Postcode>2100</Postcode>
<City>København Ø</City>
```

#### Authorized Warehouse Keeper DK99025875300

---

**Excise Number**: DK99025875300

**Role**: Authorized Warehouse Keeper

**Authorized Product Types**: E, I, W

**Address Information**

```xml
<TraderName>3S b 232 A/S</TraderName>
<StreetName>Kirkegade</StreetName>
<StreetNumber>1</StreetNumber>
<Postcode>6840</Postcode>
<City>Oksbøl</City>
```

**Tax Warehouse**: DK99025875499

**Address of Tax Warehouse:**

```xml
<TraderName>3S b 232 A/S</TraderName>
<StreetName>Statshaven</StreetName>
<StreetNumber>6</StreetNumber>
<Postcode>3000</Postcode>
<City>Helsingør</City>
```

#### Authorized Warehouse Keeper DK82065873300

---

**Excise Number**: DK82065873300

**Role**: Authorized Warehouse Keeper

**Authorized Product Types**: B, I, S, T, W

**Address Information**

```xml
<TraderName>Test af KS-1, testsitnr. 3.1.3.22</TraderName>
<StreetName>Borupvej</StreetName>
<StreetNumber>1</StreetNumber>
<Postcode>3320</Postcode>
<City>Skævinge</City>
```

**Tax Warehouse No. 1**: DK82065873305

**Address of Tax Warehouse No. 1:**

```xml
<TraderName>Test af KS-1, testsitnr. 3.1.3.22</TraderName>
<StreetName>Perlegade </StreetName>
<StreetNumber>38</StreetNumber>
<Postcode>6400</Postcode>
<City>Sønderborg</City>
```

**Tax Warehouse No. 2**: DK82065873307

**Address of Tax Warehouse No. 2:**

```xml
<TraderName>Test af KS-1, testsitnr. 3.1.3.22</TraderName>
<StreetName>Borupvej </StreetName>
<StreetNumber>7</StreetNumber>
<Postcode>3320</Postcode>
<City>Skævinge</City>
```

#### Authorized Warehouse Keeper DK82065849300

---

**Excise Number**: DK82065849300

**Role**: Authorized Warehouse Keeper

**Authorized Product Types**: E, T

**Address Information**

```xml
<TraderName>Test af KS-1, testsitnr. 3.1.3.19</TraderName>
<StreetName>Baunehøjen</StreetName>
<StreetNumber>1</StreetNumber>
<Postcode>3320</Postcode>
<City>Skævinge</City>
```

**Tax Warehouse No. 1**: DK82065849301

**Address of Tax Warehouse No. 1:**

```xml
<TraderName>Test af KS-1, testsitnr. 3.1.3.19</TraderName>
<StreetName>Baunehøjen</StreetName>
<StreetNumber>2</StreetNumber>
<Postcode>3320</Postcode>
<City>Skævinge</City>
```
**Tax Warehouse No. 2**: DK82065849302

**Address of Tax Warehouse No. 2:**

```xml
<TraderName>Test af KS-1, testsitnr. 3.1.3.19</TraderName>
<StreetName>Statshaven</StreetName>
<StreetNumber>6</StreetNumber>
<Postcode>3000</Postcode>
<City>Helsingør</City>
```

#### Consignee DK82065849200

---

**Excise Number**: DK82065849200

**Role**: Consignee

**Authorized Product Types**: T

**Address Information**

```xml
<TraderName>Test af KS-1, testsitnr. 3.1.3.19</TraderName>
<StreetName>Baunehøjen</StreetName>
<StreetNumber>1</StreetNumber>
<Postcode>3320</Postcode>
<City>Skævinge</City>
```

#### Consignee DK82070478200

---

**Excise Number**: DK82070478200

**Role**: Consignee

**Authorized Product Types**: B, E, I, T, W

**Address Information**

```xml
<TraderName>WS RISK20</TraderName>
<StreetName>Esrumvej</StreetName>
<StreetNumber>63</StreetNumber>
<Postcode>3000</Postcode>
<City>Helsingør</City>
```
#### Consignee DK99025875200

---

**Excise Number**: DK99025875200

**Role**: Consignee

**Authorized Product Types**: E

**Address Information**

```xml
<TraderName>3S b 232 A/S</TraderName>
<StreetName>Kirkegade</StreetName>
<StreetNumber>1</StreetNumber>
<Postcode>6840</Postcode>
<City>Oksbøl</City>
```

#### Consignee DK31174341200

---

**Excise Number**: DK31174341200

**Role**: Consignee

**Authorized Product Types**: I, W

**Address Information**

```xml
<TraderName>eService FKT-TEST HVID 0032</TraderName>
<StreetName>Nyborgvej</StreetName>
<StreetNumber>145</StreetNumber>
<Postcode>5220</Postcode>
```

#### Consignor DK99025875100

---

**Excise Number**: DK99025875100

**Role**: Consignor

**Authorized Product Types**: B, T

**Address Information**

```xml
<TraderName>3S b 232 A/S</TraderName>
<StreetName>Kirkegade</StreetName>
<StreetNumber>1</StreetNumber>
<Postcode>6840</Postcode>
<City>Oksbøl</City>
```

#### Consignor DK82070486100

---

**Excise Number**: DK82070486100

**Role**: Consignor

**Authorized Product Types**: B, E, I, S, T, W

**Address Information**

```xml
<TraderName>WS RISK20</TraderName>
<StreetName>Esrumvej</StreetName>
<StreetNumber>63</StreetNumber>
<Postcode>3000</Postcode>
<City>Helsingør</City>
```

### Sample documents

* [IE810](sample/ie810.xml)
* [IE813](sample/ie813.xml)
* [IE815](sample/ie815.xml)
* [IE818](sample/ie818.xml)
* [IE819](sample/ie819.xml)
* [IE825](sample/ie825.xml)
* [IE837](sample/ie837.xml)
* [IE871](sample/ie871.xml)


## Validating IE Documents

### Using Command Line Validation

On Linux based systems install the `xmllint` tool, e.g. on Ubuntu:

```
$ sudo apt-get install libxml2-utils
```

Then validate document:

```
$ xmllint --schema schema/ie815.xsd sample/ie815.xml
sample/ie815.xml validates
```

Sample output when validating the invalid document `sample/ie815-invalid.xml`:

```
$ xmllint --noout --schema schema/ie815.xsd sample/ie815-invalid.xml
sample/ie815-invalid.xml:27: element TraderName: Schemas validity error : 
Element '{urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V2.02}TraderName': This element is not expected. Expected is 
( {urn:publicid:-:EC:DGTAXUD:EMCS:PHASE3:IE815:V1.76}TraderExciseNumber ).
sample/ie815-invalid.xml fails to validate
```

### Validating all sample documents

Assumes  `xmllint` tool has been installed. Then run the `validate.sh` script:

```
$ ./validate.sh
sample/ie815.xml validates
sample/ie818.xml validates
sample/ie810.xml validates
sample/ie813.xml validates
sample/ie819.xml validates
sample/ie825.xml validates
sample/ie837.xml validates
sample/ie871.xml validates
```

### Using Docker Container

**Step 1**: Build container

```sh
$ sudo ./docker-build.sh 
Sending build context to Docker daemon  888.3kB
Step 1/8 : FROM oraclelinux:7
 ---> f6a4b5a3a7c7
Step 2/8 : MAINTAINER SKAT
 ---> Using cache
 ---> 374a5ce7239b
Step 3/8 : ADD schema /tmp/schema
 ---> Using cache
 ---> 6dcce52fad95
Step 4/8 : ADD sample /tmp/sample
 ---> Using cache
 ---> bbec8c86d503
Step 5/8 : ADD validate.sh /tmp/validate.sh
 ---> Using cache
 ---> bb5071eded02
Step 6/8 : RUN chmod a+x /tmp/validate.sh
 ---> Using cache
 ---> 1ac367be1d5b
Step 7/8 : WORKDIR /tmp
 ---> Using cache
 ---> 729d1a5b5e69
Step 8/8 : CMD "./validate.sh"
 ---> Running in 75a58a3673fa
 ---> 7f337aa90995
Removing intermediate container 75a58a3673fa
Successfully built 7f337aa90995
```

**Step 2**: Run container

```sh
$ sudo ./docker-run.sh 
sample/ie815.xml validates
sample/ie818.xml validates
sample/ie810.xml validates
sample/ie813.xml validates
sample/ie819.xml validates
sample/ie825.xml validates
sample/ie837.xml validates
sample/ie871.xml validates
```

