# add_ref

## Description
Adds arxiv references to refs.bib file.

The usual way go go about adding a bibtex entry to ones .bib file, working with arxiv.org, that you have an arxiv ID, you go to the abs/ page, click the link to inSPIRE and from there on it is a bunch of more clicking and copy/pasting before the ref. is added.

This script reduces the procedure to from arxiv ID getting the bibtex snippet added to one's refs.bib directly.

## Usage

Clone the project, see to it that add_ref.sh is present in $PATH, then run

 ```$ add_ref.sh <arxiv-ID>```

in your project folder. This adds the bibtex entry from inSPIRE to the file refs.bib (appended to the bottom of the file).

If you use a different name for you .bib file, change either line 13 of add_ref.sh or change your conventions.

## todo/known issues

* It is not to prone to malicious input. Should be improved. However, worst case scenario should be that you end up with the wrong bibtex snippet or nothing.
* It does not take the .bib filename as an argument.
