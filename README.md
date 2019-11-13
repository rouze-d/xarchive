XARCHIVE : SIMPLE DIGGING TARGET FOR FILE AND URL PATH PARAMETERS FOR VULNERABILITY SCANNER (SQLi | XSS)

Xarchive is simple tool for find file, URL path parameter on old archive (https://archive.org/) and test inject URL parameter (SQLi | XSS) for vulnerability.

need:
```
sudo gem install lolcat
sudo apt-get install curl
```

domain save on file domain.\<target\>.txt
```
cat domain.<target>.txt
```

file save on file file.\<target\>.txt
```
cat file.<target>.txt
```

URL vulnerability save on \<target\>.-posible-vuln.txt
```
cat <target>.-posible-vuln.txt
```

## Tips
URL Parameter inject test save on parameter.\<target\>.txt
```
cat parameter.<target>.txt
```

Result may be up to reach thousands (i just fix it today by remove duplicate parameter).<br>
It takes a long time to test inject parameter.<br>
So, you can open parameter.\<target\>.txt and choice some URL parameters you want.<br>
Save in new your file.<br>

Now run this command for manual inject test:
```
for x in `cat <your-file-choice-parameter>.txt`;do bash modules/inject.sh $x;done
```

URL vulnerability will save on \<target\>.-posible-vuln.txt
