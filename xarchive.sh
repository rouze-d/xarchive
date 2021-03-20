#!/bin/bash

#ping -c 1 www.google.com  
#if [ "$?" != 0 ];then
#    clear
#    echo "
#  ┓ ┃  ┳━┓  ┳━┓  ┏━┓  ┳ ┳  o  ┓ ┳  ┳━┓
#  ┏╋┛  ┃━┫  ┃┳┛  ┃    ┃━┫  ┃  ┃┏┛  ┣━ 
#  ┇ ┗  ┛ ┇  ┇┗┛  ┗━┛  ┇ ┻  ┇  ┗┛   ┻━┛ BetaVersion-2.0" | lolcat -p 0.7
#    echo ""
#    echo " Error Run This Script"
#    echo " You Need Internet Connection"
#    echo ""
#    exit 1
#fi


YELLOW=$(tput setaf 3)
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
GGG=$(tput setaf 5)
CYN=$(tput setaf 7)
BOLD=$(tput bold)
STAND=$(tput sgr 0)
pwd=$(pwd)





target="$2"


if [ -z $target ]; then
    echo "
  ┓ ┃  ┳━┓  ┳━┓  ┏━┓  ┳ ┳  o  ┓ ┳  ┳━┓
  ┏╋┛  ┃━┫  ┃┳┛  ┃    ┃━┫  ┃  ┃┏┛  ┣━ 
  ┇ ┗  ┛ ┇  ┇┗┛  ┗━┛  ┇ ┻  ┇  ┗┛   ┻━┛ BetaVersion" | lolcat -p 0.7
    echo -e "                           by-$BOLD rouze_d$STAND"
    echo -e "$BLUE search on Old Archive$STAND"
    echo -e "$BLUE file, URL path parameters and test inject parameters$STAND"
    echo -e "\n Input target domain. exp: maxis.net.my"
    echo " bash $0 --domain target.com"
    exit
fi

ping -c 1 $target
if [ "$?" != 1 ];then
    clear
    echo "
  ┓ ┃  ┳━┓  ┳━┓  ┏━┓  ┳ ┳  o  ┓ ┳  ┳━┓
  ┏╋┛  ┃━┫  ┃┳┛  ┃    ┃━┫  ┃  ┃┏┛  ┣━ 
  ┇ ┗  ┛ ┇  ┇┗┛  ┗━┛  ┇ ┻  ┇  ┗┛   ┻━┛ BetaVersion" | lolcat -p 0.7
    echo -e "                           by-$BOLD rouze_d$STAND"
    echo -e "$BLUE search on Old Archive$STAND"
    echo -e "$BLUE file, URL path parameters and test inject parameters$STAND"
    echo ""
    echo " Error Run This Script"
    echo " You Need Internet Connection or Target is Down"
    echo ""
    exit 1
fi

clear
#toilet -f smblock "           X a r c i v e " -w 100 | lolcat -p 0.7
echo "
  ┓ ┃  ┳━┓  ┳━┓  ┏━┓  ┳ ┳  o  ┓ ┳  ┳━┓
  ┏╋┛  ┃━┫  ┃┳┛  ┃    ┃━┫  ┃  ┃┏┛  ┣━ 
  ┇ ┗  ┛ ┇  ┇┗┛  ┗━┛  ┇ ┻  ┇  ┗┛   ┻━┛ BetaVersion" | lolcat -p 0.7
echo -e "                           by-$BOLD rouze_d$STAND"
echo -e "$BLUE search on Old Archive$STAND"
echo -e "$BLUE file, URL path parameters and test inject parameters$STAND"
echo ""
#echo -e " Input target domain. exp: maxis.net.my \n : \c"
#read target

rm -f -r $target
mkdir $target


echo -e "\n Need some time..\n Just find some target subdomain..\c"

block1=`host $target | grep address | cut -d ' ' -f 4 | head -n 1`
block2=`echo $block1 | cut -d '.' -f 1,2,3`

for x in `echo {1..225}`;do host -W 1.5 $block2.$x | grep $target | cut -d ' ' -f 5 >> $target/$target.in1.txt ;done


for dfile in `cat<<"EOT"
abbot
account
admin
administrator
adserver
alpha
alt1
alt2
alt3
alt4
api
aptest
arch
artifactory
assembla
atd
athena
atm
atmmachine
atollon
attask
attix
attix5
automatedqa
backend
backup
bacula
badboy
bank
basecamp
bazaar
beta
bitkeeper
bkp
branch
brightwork
broadwave
bromine
bugtracker
bugzilla
build
businessdriver
campus
catchlimited
ccc
centraldesktop
cerebro
civicrm
clarizen
clearcase
clearquest
clif
clockingit
codebeamer
codendi
codesourcery
codeville
collabtive
compuware
concordion
conformiq
cppunit
crm
cruisecontrol
cubictest
cucumber
cunit
cvs
cvsnt
darcs
dartenium
dcvs
debbugs
dev
devel
development
devtest
dieseltest
digitaltester
distract
dolibarr
dotproject
dune
durable
duxqa
dynamics
easy
egroupware
eload
elvior
empirix
endeavour
enterprise
epesi
epesibim
etester
eventum
fasttrack
feng
firefly
flumotion
flyspray
fogbugz
foro
forum
fossil
frankenstein
freecast
froglogic
frontend
ftp
functional
functionaltester
fwptt
game
games
gamma
gemini
geniesys
genietcms
genius
git
glasscubes
gnats
goplan
grinder
guitar
gurock
hammerhead
hammerora
harvest
helix
help
helpdesk
home
htmlunit
httpunit
huddle
hudson
hyperoffice
icecast
ikiwiki
images
incisif
inflectra
info
informup
intra
intranet
issuenet
isupport
it
itcampus
jabber
jadeliquid
jbehave
jboss
jcrawler
jemmy
jfunc
jira
jite
jmeter
jotbug
journyx
jtest
jtrack
junit
jwebunit
kayako
kforge
kkoop
launchpad
liberum
libresource
liquidplanner
liquidtest
list
lista
listas
listman
lists
loadrunner
magnetic
mail
mailman
mantis
mantisbt
manual
marathon
matchware
maven
mbt
media
mercurial
mercury
merlin
messagemagic
mingle
mks
mksintegrity
mojo
money
monotone
mvn
nuevosoft
ns1
ns2
ns3
ns4
ns5
objentis
opengoo
opengroup
openload
openproj
openqa
opensta
openwebload
optimaltest
orcanos
origsoft
otmgr
otrs
passmark
peercast
perforce
performancetester
phpgroupware
phprojekt
phpunit
pivotal
pjsip
planisware
plastic
postfix
practitest
primavera
principal
prod
project
projecthq
projectpier
projectplace
projectspaces
projektron
projistics
psnext
pureagent
pureload
puretest
pylot
qadirector
qaliber
qaload
qamanager
qatraq
qmetry
qmtest
qpack
qtest
qtronic
qualify
quickbase
quicktest
quicktestpro
quotium
rcs
realese
redmine
remedy
request
research
robot
roundup
rth
s3
sahi
salome
sap
scarab
sccs
seam
seapine
search
selenium
sendmail
services
severa
sharpforge
shoutcast
siebel
silk
silkcentral
silkperformer
simpletest
simpletestmanagement
simpleticket
simulator
sipp
sipr
smartesoft
smartload
smartqm
smartscript
smartsheet
smtp
soap
soapui
software
softwareresearch
sourcesafe
specflow
spiceworks
spiratest
spring
squish
staff
stage
stagging
static
storytestiq
streaming
stub
sugar
sugarcrm
supportworks
svk
svn
synergy
tag
team
teamcenter
teamware
teamwork
teamworkpm
techexcel
telerik
tenrox
test
test1
test2
testbench
testcase
testcomplete
testdirector
testdrive
tester
testing
testitools
testlink
testlog
testman
testmanager
testmaster
testmasters
testopia
testoptimal
testpartner
testrail
testrun
testsuite
testtrack
testuff
testup
testworks
texttest
tigris
tomcat
tplan
trac
track
tracker
trackersuite
tricentis
trunk
twist
ubidesk
unawave
unreal
utest
vault
verisium
vnc
vncrobot
vperformer
vpmi
vtest
watin
watir
web
web2project
web2test
webaii
webdriver
webking
webload
webspoc
wiki
windmill
winrunner
wit
workbook
workengine
worklenz
workspace
wowza
wrike
ws
ww1
ww2
ww3
ww4
www
www2
www3
www4
xhtmlunit
xml-simulator
xplanner
xqual
xstudio
youtrack
zentrack
zephyr
zimbra
zimbra1
zimbra2
zimbra3
zoho
EOT
`
do ping $dfile.$target -c 1 -W 1 -i 1 2> /dev/null | head -n 1 | grep 'PING' > /dev/null
if [ "$?" != 0 ];then
    echo -e "\c"
else
if [ '''$?''' != '''$dfile.$target''' ];then
    echo "$dfile.$target" >> $target/$target.in1.txt
fi
fi
done

curl -s -k --url 'https://crt.sh/?q=%.$target&output=json' --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:17.0) Gecko/20100101 Firefox/17.0.6' --connect-timeout 90 | jq -r '.[].name_value' | grep -v '*' >> $target/$target.in1.txt

cat $target/$target.in1.txt | uniq | sort | uniq >> $target/domain.$target.txt

rm -f $target.in1.txt 

line1=`wc -l $target/domain.$target.txt | cut -d ' ' -f 1`
echo " "
echo " "
cat $target/domain.$target.txt
echo ""
echo "$BOLD$GREEN $line1$STAND sub-domain found to test"
echo -e " continue for\c"
echo -e "$BOLD MAGIC\c" | lolcat -p 0.1
echo -e "$STAND time? [enter]\c"
read ready1

echo -e " This are NOT FREEZE!!\n Need some time for digging.. yes! long time (O_o)!\n"
cat $target/domain.$target.txt | modules/waybackurls > $target/$target.out.txt


for ffile in `cat<<"EOT"
ans
csv
conf
ext
db
doc
docx
git
gz
ini
log
lwp
mdb
mw
odp
ods
pdf
ppt
pptx
ps
rar
rtf
sdb
sig
sql
tar
tif
ttif
txt
swp
wdb
wk
wki
wks
wku
wps
wri
xls
xlsx
xml
zip
EOT
`
do cat $target/$target.out.txt | grep -i -E "\.$ffile" >> $target/file.$target.txt;done

cat $target/$target.out.txt | grep  $target | grep "?" | grep "=" | uniq >> $target/parameter.$target.txt
cat $target/parameter.$target.txt | cut -d '/' -f 3 | cut -d '.' -f 1 | sort | uniq >> $target/dd.domain

sleep 2
for y in `cat $target/dd.domain`;do cat $target/parameter.$target.txt | grep $y >> $target/$y.lst;done
sleep 2
for z in `cat $target/*.lst | cut -d '?' -f 2,3,4 | cut -d '=' -f 1 | sort | uniq`;do cat $target/*.lst | grep $z | head -n 1 >> $target/inject.$target.txt;done

#for x in `cat $target/parameter.$target.txt | cut -d '?' -f 2,3,4 | cut -d '=' -f 1 | sort | uniq`;do cat $target/parameter.$target.txt | grep $x | head -n 1 >> $target/inject.$target.txt;done

#mkdir .$target
#for x in `cat domain.$target.txt`;do cat parameter.$target.txt | grep $x >> .$target/$x.txt;done
#for y in `cat domain.$target.txt`;do cat .$target/$y.txt | head -n 2 >> parameter.$target.txt.txt ;done
#for z in `cat domain.$target.txt`;do cat .$target/$z.txt | tail -n 2 >> parameter.$target.txt.txt ;done



rm -r -f $target/$target.in1.txt $target/.$target $target/$target.out.txt $target/*.lst $target/dd.domain
#line2=`wc -l parameter.$target.txt.txt | cut -d ' ' -f 1`

line2=`wc -l $target/inject.$target.txt | cut -d ' ' -f 1`
line3=`wc -l $target/file.$target.txt | cut -d ' ' -f 1`
echo ""
echo -e "$BOLD$GREEN $line3$STAND posible file on$BOLD file.$target.txt$STAND \n(log, modifed, backup, ssistant's workstation, etc...)"
echo "$BOLD$GREEN $line2$STAND posible to test inject pramater"
echo ""
echo -e " Continue test inject all $line posible? [enter] \c"
read raedy2
for x in `cat $target/inject.$target.txt`;do bash modules/inject.sh $x;done
