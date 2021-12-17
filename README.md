# log4j2shell
Shell script to perform un-authenticated scan on list of hostnames to check whether any log4shell vulnerability exists or not!!

**Inputs:**
company.txt : We have to create a company.txt which contains list of urls we want to scan for log4j2 vulnerability
Outbound service Url: we have to provide outbound service url(eg: domain owned by us or burp collaborator) in order to capture incoming requests
Command to test: sh <filename.sh>

**Output:** If any application is vulnerable to log4jshell, an incoming DNS request gets generated to the given burp collaborator

Sample output:
![image](https://user-images.githubusercontent.com/91212533/146490062-14cc9d7e-f8b2-40c1-b86d-92179552b5a0.png)
