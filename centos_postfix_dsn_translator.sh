# file: centos_postfix_dsn_translator.sh

#!/bin/bash
##########################################
# Postfix DSN Script Based off of rfc3463 
# http://www.faqs.org/rfcs/rfc3463.html
# Written by L.C.
# DSN rfc's refer to rfc3461-rfc3464
##########################################

######################################################
# Persistent Transient Failure Aka Deferred 4.xxx.xxx 
######################################################

# Other or Undefined Status #
echo "Deferred :: 4.0.0 :: Other Undefined Status :"`cat /var/log/maillog | grep -c "dsn=4.0.0"`
echo " "
# Address Status #
echo "Deferred :: 4.1.0 :: Other address status :"`cat /var/log/maillog | grep -c "dsn=4.1.0"` 
echo "Deferred :: 4.1.1 :: Bad destination mailbox address :"`cat /var/log/maillog | grep -c "dsn=4.1.1"`
echo "Deferred :: 4.1.2 :: Bad destination system address :"`cat /var/log/maillog | grep -c "dsn=4.1.2"`
echo "Deferred :: 4.1.3 :: Bad destination mailbox address syntax :"`cat /var/log/maillog | grep -c "dsn=4.1.3"`
echo "Deferred :: 4.1.4 :: Destination mailbox address ambiguous :"`cat /var/log/maillog | grep -c "dsn=4.1.4"`
echo "Deferred :: 4.1.5 :: Destination mailbox address valid :"`cat /var/log/maillog | grep -c "dsn=4.1.5"`
echo "Deferred :: 4.1.6 :: Mailbox has moved :"`cat /var/log/maillog | grep -c "dsn=4.1.6"`
echo "Deferred :: 4.1.7 :: Bad sender's mailbox address syntax :"`cat /var/log/maillog | grep -c "dsn=4.1.7"`
echo "Deferred :: 4.1.8 :: Bad sender's system address :"`cat /var/log/maillog | grep -c "dsn=4.1.8"`
echo " "
# Mailbox Status #
echo "Deferred :: 4.2.0 :: Other or undefined mailbox status :"`cat /var/log/maillog | grep -c "dsn=4.2.0"`
echo "Deferred :: 4.2.1 :: Mailbox disabled, not accepting messages :"`cat /var/log/maillog | grep -c "dsn=4.2.1"`
echo "Deferred :: 4.2.2 :: Mailbox full :"`cat /var/log/maillog | grep -c "dsn=4.2.2"`
echo "Deferred :: 4.2.3 :: Message length exceeds administrative limit :"`cat /var/log/maillog | grep -c "dsn=4.2.3"`
echo "Deferred :: 4.2.4 :: Mailing list expansion problem :"`cat /var/log/maillog | grep -c "dsn=4.2.4"`
echo " "
# Mail system status #
echo "Deferred :: 4.3.0 :: Other or undefined mail system status :"`cat /var/log/maillog | grep -c "dsn=4.3.0"`
echo "Deferred :: 4.3.1 :: Mail system full :"`cat /var/log/maillog | grep -c "dsn=4.3.1"`
echo "Deferred :: 4.3.2 :: System not accepting network messages :"`cat /var/log/maillog | grep -c "dsn=4.3.2"`
echo "Deferred :: 4.3.3 :: System not capable of selected features :"`cat /var/log/maillog | grep -c "dsn=4.3.3"`
echo "Deferred :: 4.3.4 :: Message too big for system :"`cat /var/log/maillog | grep -c "dsn=4.3.4"`
echo " "
# Network and Routing Status #
echo "Deferred :: 4.4.0 :: Other or undefined network or routing status :"`cat /var/log/maillog | grep -c "dsn=4.4.0"`
echo "Deferred :: 4.4.1 :: No answer from host :"`cat /var/log/maillog | grep -c "dsn=4.4.1"`
echo "Deferred :: 4.4.2 :: Bad connection :"`cat /var/log/maillog | grep -c "dsn=4.4.2"`
echo "Deferred :: 4.4.3 :: Routing server failure :"`cat /var/log/maillog | grep -c "dsn=4.4.3"`
echo "Deferred :: 4.4.4 :: Unable to route :"`cat /var/log/maillog | grep -c "dsn=4.4.4"`
echo "Deferred :: 4.4.5 :: Network congestion :"`cat /var/log/maillog | grep -c "dsn=4.4.5"`
echo "Deferred :: 4.4.6 :: Routing loop detected :"`cat /var/log/maillog | grep -c "dsn=4.4.6"`
echo "Deferred :: 4.4.7 :: Delivery time expired :"`cat /var/log/maillog | grep -c "dsn=4.4.7"`
echo " "
# Mail Delivery Protocol Status #
echo "Deferred :: 4.5.0 :: Other or undefined protocol status :"`cat /var/log/maillog | grep -c "dsn=4.5.0"`
echo "Deferred :: 4.5.1 :: Invalid command :"`cat /var/log/maillog | grep -c "dsn=4.5.1"`
echo "Deferred :: 4.5.2 :: Syntax error :"`cat /var/log/maillog | grep -c "dsn=4.5.2"`
echo "Deferred :: 4.5.3 :: Too many recipients :"`cat /var/log/maillog | grep -c "dsn=4.5.3"`
echo "Deferred :: 4.5.4 :: Invalid command arguments :"`cat /var/log/maillog | grep -c "dsn=4.5.4"`
echo "Deferred :: 4.5.5 :: Wrong protocol version :"`cat /var/log/maillog | grep -c "dsn=4.5.5"`
echo " "
# Message Content or Message Media Status #
echo "Deferred :: 4.6.0 :: Other or undefined media error :"`cat /var/log/maillog | grep -c "dsn=4.6.0"`
echo "Deferred :: 4.6.1 :: Media not supported :"`cat /var/log/maillog | grep -c "dsn=4.6.1"`
echo "Deferred :: 4.6.2 :: Conversion required and prohibited :"`cat /var/log/maillog | grep -c "dsn=4.6.2"`
echo "Deferred :: 4.6.3 :: Conversion required but not supported :"`cat /var/log/maillog | grep -c "dsn=4.6.3"`
echo "Deferred :: 4.6.4 :: Conversion with loss performed :"`cat /var/log/maillog | grep -c "dsn=4.6.4"`
echo "Deferred :: 4.6.5 :: Conversion failed :"`cat /var/log/maillog | grep -c "dsn=4.6.5"`
echo " "
# Security or Policy Status #
echo "Deferred :: 4.7.0 :: Other or undefined security status :"`cat /var/log/maillog | grep -c "dsn=4.7.0"`
echo "Deferred :: 4.7.1 :: Delivery not authorized, message refused :"`cat /var/log/maillog | grep -c "dsn=4.7.1"`
echo "Deferred :: 4.7.2 :: Mailing list expansion prohibited :"`cat /var/log/maillog | grep -c "dsn=4.7.2"`
echo "Deferred :: 4.7.3 :: Security conversion required but not possible :"`cat /var/log/maillog | grep -c "dsn=4.7.3"`
echo "Deferred :: 4.7.4 :: Security features not supported :"`cat /var/log/maillog | grep -c "dsn=4.7.4"`
echo "Deferred :: 4.7.5 :: Cryptographic failure :"`cat /var/log/maillog | grep -c "dsn=4.7.5"`
echo "Deferred :: 4.7.6 :: Cryptographic algorithm not supported :"`cat /var/log/maillog | grep -c "dsn=4.7.6"`
echo "Deferred :: 4.7.7 :: Message integrity failure :"`cat /var/log/maillog | grep -c "dsn=4.7.7"`
echo " "
############################################
# Permanent Failure's Aka Bounces 5.xxx.xxx 
############################################

# Other or Undefined Status #
echo "Bounced :: 5.0.0 :: Other Undefined Status :"`cat /var/log/maillog | grep -c "dsn=5.0.0"`
echo " "
# Address Status #
echo "Bounced :: 5.1.0 :: Other address status :"`cat /var/log/maillog | grep -c "dsn=5.1.0"` 
echo "Bounced :: 5.1.1 :: Bad destination mailbox address :"`cat /var/log/maillog | grep -c "dsn=5.1.1"`
echo "Bounced :: 5.1.2 :: Bad destination system address :"`cat /var/log/maillog | grep -c "dsn=5.1.2"`
echo "Bounced :: 5.1.3 :: Bad destination mailbox address syntax :"`cat /var/log/maillog | grep -c "dsn=5.1.3"`
echo "Bounced :: 5.1.4 :: Destination mailbox address ambiguous :"`cat /var/log/maillog | grep -c "dsn=5.1.4"`
echo "Bounced :: 5.1.5 :: Destination mailbox address valid :"`cat /var/log/maillog | grep -c "dsn=5.1.5"`
echo "Bounced :: 5.1.6 :: Mailbox has moved :"`cat /var/log/maillog | grep -c "dsn=5.1.6"`
echo "Bounced :: 5.1.7 :: Bad sender's mailbox address syntax :"`cat /var/log/maillog | grep -c "dsn=5.1.7"`
echo "Bounced :: 5.1.8 :: Bad sender's system address :"`cat /var/log/maillog | grep -c "dsn=5.1.8"`
echo " "
# Mailbox Status #
echo "Bounced :: 5.2.0 :: Other or undefined mailbox status :"`cat /var/log/maillog | grep -c "dsn=5.2.0"`
echo "Bounced :: 5.2.1 :: Mailbox disabled, not accepting messages :"`cat /var/log/maillog | grep -c "dsn=5.2.1"`
echo "Bounced :: 5.2.2 :: Mailbox full :"`cat /var/log/maillog | grep -c "dsn=5.2.2"`
echo "Bounced :: 5.2.3 :: Message length exceeds administrative limit :"`cat /var/log/maillog | grep -c "dsn=5.2.3"`
echo "Bounced :: 5.2.4 :: Mailing list expansion problem :"`cat /var/log/maillog | grep -c "dsn=5.2.4"`
echo " "
# Mail system status #
echo "Bounced :: 5.3.0 :: Other or undefined mail system status :"`cat /var/log/maillog | grep -c "dsn=5.3.0"`
echo "Bounced :: 5.3.1 :: Mail system full :"`cat /var/log/maillog | grep -c "dsn=5.3.1"`
echo "Bounced :: 5.3.2 :: System not accepting network messages :"`cat /var/log/maillog | grep -c "dsn=5.3.2"`
echo "Bounced :: 5.3.3 :: System not capable of selected features :"`cat /var/log/maillog | grep -c "dsn=5.3.3"`
echo "Bounced :: 5.3.4 :: Message too big for system :"`cat /var/log/maillog | grep -c "dsn=5.3.4"`
echo " "
# Network and Routing Status #
echo "Bounced :: 5.4.0 :: Other or undefined network or routing statu :"`cat /var/log/maillog | grep -c "dsn=5.4.0"`
echo "Bounced :: 5.4.1 :: No answer from host :"`cat /var/log/maillog | grep -c "dsn=5.4.1"`
echo "Bounced :: 5.4.2 :: Bad connection :"`cat /var/log/maillog | grep -c "dsn=5.4.2"`
echo "Bounced :: 5.4.3 :: Routing server failure :"`cat /var/log/maillog | grep -c "dsn=5.4.3"`
echo "Bounced :: 5.4.4 :: Unable to route :"`cat /var/log/maillog | grep -c "dsn=5.4.4"`
echo "Bounced :: 5.4.5 :: Network congestion :"`cat /var/log/maillog | grep -c "dsn=5.4.5"`
echo "Bounced :: 5.4.6 :: Routing loop detected :"`cat /var/log/maillog | grep -c "dsn=5.4.6"`
echo "Bounced :: 5.4.7 :: Delivery time expired :"`cat /var/log/maillog | grep -c "dsn=5.4.7"`
echo " "
# Mail Delivery Protocol Status #
echo "Bounced :: 5.5.0 :: Other or undefined protocol status :"`cat /var/log/maillog | grep -c "dsn=5.5.0"`
echo "Bounced :: 5.5.1 :: Invalid command :"`cat /var/log/maillog | grep -c "dsn=5.5.1"`
echo "Bounced :: 5.5.2 :: Syntax error :"`cat /var/log/maillog | grep -c "dsn=5.5.2"`
echo "Bounced :: 5.5.3 :: Too many recipients :"`cat /var/log/maillog | grep -c "dsn=5.5.3"`
echo "Bounced :: 5.5.4 :: Invalid command arguments :"`cat /var/log/maillog | grep -c "dsn=5.5.4"`
echo "Bounced :: 5.5.5 :: Wrong protocol version :"`cat /var/log/maillog | grep -c "dsn=5.5.5"`
echo " "
# Message Content or Message Media Status #
echo "Bounced :: 5.6.0 :: Other or undefined media error :"`cat /var/log/maillog | grep -c "dsn=5.6.0"`
echo "Bounced :: 5.6.1 :: Media not supported :"`cat /var/log/maillog | grep -c "dsn=5.6.1"`
echo "Bounced :: 5.6.2 :: Conversion required and prohibited :"`cat /var/log/maillog | grep -c "dsn=5.6.2"`
echo "Bounced :: 5.6.3 :: Conversion required but not supported :"`cat /var/log/maillog | grep -c "dsn=5.6.3"`
echo "Bounced :: 5.6.4 :: Conversion with loss performed :"`cat /var/log/maillog | grep -c "dsn=5.6.4"`
echo "Bounced :: 5.6.5 :: Conversion failed :"`cat /var/log/maillog | grep -c "dsn=5.6.5"`
echo " "
# Security or Policy Status #
echo "Bounced :: 5.7.0 :: Other or undefined security status :"`cat /var/log/maillog | grep -c "dsn=5.7.0"`
echo "Bounced :: 5.7.1 :: Delivery not authorized, message refused :"`cat /var/log/maillog | grep -c "dsn=5.7.1"`
echo "Bounced :: 5.7.2 :: Mailing list expansion prohibited :"`cat /var/log/maillog | grep -c "dsn=5.7.2"`
echo "Bounced :: 5.7.3 :: Security conversion required but not possible :"`cat /var/log/maillog | grep -c "dsn=5.7.3"`
echo "Bounced :: 5.7.4 :: Security features not supported :"`cat /var/log/maillog | grep -c "dsn=5.7.4"`
echo "Bounced :: 5.7.5 :: Cryptographic failure :"`cat /var/log/maillog | grep -c "dsn=5.7.5"`
echo "Bounced :: 5.7.6 :: Cryptographic algorithm not supported :"`cat /var/log/maillog | grep -c "dsn=5.7.6"`
echo "Bounced :: 5.7.7 :: Message integrity failure :"`cat /var/log/maillog | grep -c "dsn=5.7.7"`
echo " "
############################################
# Custom Errors x.8.xxx & Success 2.xxx.xxx
############################################
echo "Sent Mail :: 2.0.0 :: Message Sent :"`cat /var/log/maillog | grep -c "dsn=2.0.0"`
echo " "
echo "Custom successes :: 2.8.x :: Custom sent Message :"`cat /var/log/maillog | grep "dsn=2." | grep -v "dsn=2.0.0" | grep -c "dsn=2."`
echo "Custom deferres :: 4.8.x :: Custom defferes Message :"`cat /var/log/maillog | grep -c "dsn=4.8."`
echo "Custom failures :: 5.8.x :: Custom Failure Message :"`cat /var/log/maillog | grep -c "dsn=5.8."`
############################################
# Filter for all bounced mail
############################################
cat /var/log/maillog | grep ": to=<" | grep -v "dsn=4." | grep -v "dsn=2." | awk '{print $7}' | grep -v "to=<\esozm" | grep -v "to=<\root" > bounced.log
