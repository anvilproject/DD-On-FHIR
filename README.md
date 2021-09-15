# DD-On_FHIR
Example data-dictionary representation using FHIR Shorthand (FSH) 

The purpose for this repository is to identify a common way to represent study metadata in FHIR in a way that is clear and accessible without straying any further from standard FHIR resources than is absolutely necessary. 

We encourage anyone interested in exploring this topic to participate by creating issues or pull requests.

## Quick Start
(shamelessy stolen from [NCPI FHIR IG README](https://github.com/NIH-NCPI/ncpi-fhir-ig))

1. Install the following dependencies (See [the instructions](https://fshschool.org/docs/sushi/installation/)):

- Node.js >= v10.0.0
- SUSHI >= v1.2.0
- Jekyll >= v4.2.0

2. Clone this repository.

```bash
$ git clone git@github.com:anvilproject/DD-On-FHIR
$ cd DD-On-FHIR
```

3. Run SUSHI.

```bash
$ sushi .
```

4. Update the HL7 FHIR IG Publisher. This will download the latest version of the tool. This step can be skipped if 1) the command already has been run recently or 2) you don't want to update it.

```bash
$ ./_updatePublisher.sh
```

5. Generate the IG.

```bash
$ ./_genonce.sh
```

6. Open the file `./output/index.html` to browse the resulting IG.

## Implementation Guide (Pre-Release)
The anvilproject.io seems to be redirected to a non-github related webserver, so I'm hoping this will work:

The DD-On-FHIR Implementation Guide (pre-release) is available [here](http://torstees.github.io/DD-On-FHIR/).
