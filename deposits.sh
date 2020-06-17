#!/bin/bash

#######################################
# ------------ 6. Deposits ------------
#######################################

function get_deposits_open()
{
    clear
    get_api_call "deposits/open" "GET" "" "Retrieving open deposits..."
    echo "1. Refresh This"
    echo "2. Deposits Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_deposits_open;;
        "2") print_deposits_menu;;
        "3") print_main_menu;;
        *) get_deposits_open;;
    esac
}

function get_deposits_closed()
{
    clear
    get_api_call "deposits/closed" "GET" "" "Retrieving closed deposits..."
    echo "1. Refresh This"
    echo "2. Deposits Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_deposits_closed;;
        "2") print_deposits_menu;;
        "3") print_main_menu;;
        *) get_deposits_closed;;
    esac
}

function get_deposits_by_txid()
{
    clear
    read -p 'Enter deposit txid: ' txid
    get_api_call "deposits/ByTxId/$txid" "GET" "" "Retrieving deposits by txid..."
    echo "1. New Query"
    echo "2. Deposits Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_deposits_by_txid;;
        "2") print_deposits_menu;;
        "3") print_main_menu;;
        *) get_deposits_by_txid;;
    esac
}

function get_deposit()
{
    clear
    read -p 'Enter deposit uuid: ' uuid
    get_api_call "deposits/$uuid" "GET" "" "Retrieving deposit..."
    echo "1. New Query"
    echo "2. Deposits Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_deposit;;
        "2") print_deposits_menu;;
        "3") print_main_menu;;
        *) get_deposit;;
    esac
}
