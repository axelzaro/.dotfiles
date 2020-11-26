# cmd
alias l='ls -all'
alias ..='cd ..'
alias gh='history|grep'

# tools
#alias tda='~/tools/tda-3.0/bin/tda.sh'
alias tda='java -jar -Xmx512m -jar ~/tools/tda-3.0/bin/tda.jar'
alias tdb='java -jar ~/tools/jca*.jar'
alias cleent='python ~/.dotfiles/tools/cleeeen.py'
alias gcv='~/tools/GCViewer.app'

#echo "echo blah >> /tmp/test" | sudo bash

# log parse
alias logAfter='echo "File name?" ; read fname ; echo "logs after date?" ; read afterDate ; awk "/$afterDate.*/,0" $fname > ${fname}_after_$afterDate'
alias extractLog="echo 'File name?' ; read fname ; echo 'logs from date?' ; read startDate ; echo 'logs to date?' ; read endDate ; sed -n '/$startDate/,/$endDate/p' $fname > ${fname}.extracted"

# docekr shortcuts
#alias startAgent='docker run --network=dockerNetwork -v bambooAgentVolume_agent011:/home/bamboo/bamboo-agent-home --name="agent011" --init -d atlassian/bamboo-agent-base http://10.10.0.4:8085'
alias test='echo $0 $1 $2 $3'
    startNewAgent(){
        if [ $# -lt 1 ]
            then
                echo "No arguments supplied"
                echo "first arg agent_name"
                echo "second arg BambooIP"
                echo "example: startNewAgent agent1 10.10.0.3"
            else
                docker run --network=testEnviornment -v bambooAgentVolume_$1:/home/bamboo/bamboo-agent-home --name=$1 --init -d atlassian/bamboo-agent-base http://$2:8085
        fi
        echo "done"
    }