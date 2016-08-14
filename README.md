# vCardUniq
Simple Perl script to remove duplicate vCards

About
---------
Simple script which removes duplicate vCard entries. Useful to get rid duplicated contacts from the phone
after imorting contacts from several sources (several SIM cards). Entries must be identical to get merged,
any difference causes vcard to be treated as non unique.

Usage
---------
Script reads STDIN and writes to STDOUT, so recommended usage is:
cat file1 file2 file3 | perl vCardUniq.pl > uniq.vcf
