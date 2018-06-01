FROM centos:7
MAINTAINER Andrei Cenja <andrei.cenja@eea.europa.eu>

# assuming the eionet.schema and DB_CONFIG are deployed in the right places by the ldapmaster container

RUN yum install -y openldap-servers openldap 
#cronie

RUN mkdir /etc/cron.eea/
ADD backup_eionet_ldap /etc/cron.eea/
#ADD backup_eionet_ldap_trigger /etc/cron.d/
#RUN chmod +x /etc/cron.eea/backup_eionet_ldap
#RUN touch /var/log/cron.log
#CMD /usr/sbin/crond -n
