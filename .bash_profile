# cmd
alias l='ls -all'

# tools
#alias tda='~/tools/tda-3.0/bin/tda.sh'
alias tda='java -jar -Xmx512m -jar ~/tools/tda-3.0/bin/tda.jar'
alias tdb='java -jar /Users/svetlozar.orlovski/tools/jca*.jar'
alias cleent='python ~/tools/cleeeen.py'
alias gcv='~/tools/GCViewer.app'

#echo "echo blah >> /tmp/test" | sudo bash

# log parse
alias logAfter='echo "File name?" ; read fname ; echo "logs after date?" ; read afterDate ; awk "/$afterDate.*/,0" $fname > ${fname}_after_$afterDate'

