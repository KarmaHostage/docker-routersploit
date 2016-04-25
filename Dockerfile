FROM debian:jessie
MAINTAINER Quinten De Swaef
RUN apt-get update && apt-get install git python python-requests python-paramiko python-netsnmp -y
RUN cd /opt && git clone https://github.com/reverse-shell/routersploit && cd routersploit
ADD run.sh /opt/routersploit/run.sh
RUN chmod +x /opt/routersploit/run.sh && chmod +x /opt/routersploit/rsf.py
ENTRYPOINT ["./opt/routersploit/run.sh"]
