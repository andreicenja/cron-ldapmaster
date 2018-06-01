# cron-ldapmaster


This is a cron service that makes daily backups of the Eionet LDAP master data in LDIF format.

The LDAP configuration and schemas are created on an external volume by the ldapmaster service, and re-used by the cron service.

LDIF files older than 150 days are deleted.
