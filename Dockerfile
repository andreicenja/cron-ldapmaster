FROM centos:7
MAINTAINER Andrei Cenja <andrei.cenja@eea.europa.eu>

# assuming the LDAP config is already deployed in the right places by the ldapmaster container

RUN yum install -y openldap-servers openldap 

RUN mkdir /etc/cron.eea/
ADD backup_eionet_ldap /etc/cron.eea/
