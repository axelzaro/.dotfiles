#!/usr/bin/python
# -*- coding: utf-8 -*-
import os
import requests
import json
import send2trash

path = "/Users/svetlozar.orlovski/Tickets"
listdir = os.listdir(path)

tickets = ""
url = "https://ps-ticketstatus.prod.atl-paas.net/tickets"

for folder in listdir:
    print("checking" + folder)
    if (folder.startswith("PS" or "BSP") or folder.startswith("BSP")):
        print("Adding ticket:" + folder)
        tickets += folder + ","

# Remove the last comma
tickets = tickets[:-1]

print(tickets)
querystring = {"keys":tickets}

response = requests.request("GET", url, params=querystring)

print(response.text)
print("-------------------------------")
print(response.status_code)


if response.status_code == 200:
    print(response.text)
    issues = json.loads(response.text)
   #nremoved = 0

    for issue in issues:
        print(issue[u'key'] + " " + issue[u'status'])
        if(issue[u'status'] == "Closed"):
            send2trash.send2trash(path + "/" + issue[u'key'])
            print("removed " + path + "/" + issue[u'key'] )
            #nremoved = nremoved + 1
    print("")
    #print("removed " + nremoved)
else:
    print("Rest API failed with: " + response.status_code)