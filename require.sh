#!/bin/sh


#this script is meant to combine all the installed tools requirement.txt files into one simple script to execute after the initial create script

touch req.txt

echo "future
six
pyasn1>=0.2.3
pycryptodomex
pyOpenSSL>=0.16.2
ldap3>=2.5,!=2.5.2,!=2.5.0,!=2.6
ldapdomaindump>=0.9.0
flask>=1.0
pyreadline;sys_platform == 'win32'" >> req.txt

echo "google" >> req.txt

pip3 install -r req.txt
