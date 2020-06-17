#!/bin/bash

##############################################
# ------------ API Call Functions ------------
##############################################

uri="https://api.bittrex.com/v3/"

function get_api_call()
{
    clear
    echo $4
    timeStamp=$(date +%s000)
    request=$1
    httpMethod=$2
    payload=$3
    hashPayload=$(echo -n "$payload" | openssl dgst -sha512)
    stripHashPayload=${hashPayload#*= }
    fullUri=$timeStamp$uri$request$httpMethod$stripHashPayload
    allSigned=$(echo -n "$fullUri" | openssl dgst -sha512 -hmac "$apiSecret")
    stripAllSigned=${allSigned#*= }
    response=$(curl -s -H "Api-Key: $apiKey" -H "Api-Timestamp: $timeStamp" -H "Api-Content-Hash: $stripHashPayload" -H "Api-Signature: $stripAllSigned" -H "Content-Type: application/json" -H "Accept: application/json" $uri$request)
    clear
    echo $response | jq -r ''
}

function head_api_call()
{
    clear
    echo $4
    timeStamp=$(date +%s000)
    request=$1
    httpMethod=$2
    payload=$3
    hashPayload=$(echo -n "$payload" | openssl dgst -sha512)
    stripHashPayload=${hashPayload#*= }
    fullUri=$timeStamp$uri$request$httpMethod$stripHashPayload
    allSigned=$(echo -n "$fullUri" | openssl dgst -sha512 -hmac "$apiSecret")
    stripAllSigned=${allSigned#*= }
    response=$(curl -s -X HEAD -H "Api-Key: $apiKey" -H "Api-Timestamp: $timeStamp" -H "Api-Content-Hash: $stripHashPayload" -H "Api-Signature: $stripAllSigned" -H "Content-Type: application/json" -H "Accept: application/json" $uri$request)
    clear
    echo $response | jq -r ''
}

function post_api_call()
{
    clear
    echo $4
    timeStamp=$(date +%s000)
    request=$1
    httpMethod=$2
    payload=$3
    hashPayload=$(echo -n "$payload" | openssl dgst -sha512)
    stripHashPayload=${hashPayload#*= }
    fullUri=$timeStamp$uri$request$httpMethod$stripHashPayload
    allSigned=$(echo -n "$fullUri" | openssl dgst -sha512 -hmac "$apiSecret")
    stripAllSigned=${allSigned#*= }
    response=$(curl -s --request POST --data "$payload" -H "Api-Key: $apiKey" -H "Api-Timestamp: $timeStamp" -H "Api-Content-Hash: $stripHashPayload" -H "Api-Signature: $stripAllSigned" -H "Content-Type: application/json" -H "Accept: application/json" $uri$request)
    clear
    echo $response | jq -r ''
}
