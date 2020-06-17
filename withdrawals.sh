#!/bin/bash

##############################################
# ------------ 12. Withdrawals ---------------
##############################################

function get_withdrawals_open()
{
    get_api_call "withdrawals/open" "GET" "" "Retrieving open withdrawals..."
    echo "1. Refresh This"
    echo "2. Withdrawals Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_withdrawals_open;;
        "2") print_withdrawals_menu;;
        "3") print_main_menu;;
        *) get_withdrawals_open;;
    esac
}

function get_withdrawals_closed()
{
    get_api_call "withdrawals/closed" "GET" "" "Retrieving closed withdrawals..."
    echo "1. Refresh This"
    echo "2. Withdrawals Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_withdrawals_closed;;
        "2") print_withdrawals_menu;;
        "3") print_main_menu;;
        *) get_withdrawals_closed;;
    esac
}

function get_withdrawals_withdrawal_bytxid()
{
    clear
    read -p 'Enter withdrawal TxId: ' txid
    get_api_call "withdrawals/ByTxId/$txid" "GET" "" "Retrieving withdrawal by TxId"
    echo "1. New Query"
    echo "2. Withdrawals Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_withdrawals_withdrawal_bytxid;;
        "2") print_withdrawals_menu;;
        "3") print_main_menu;;
        *) get_withdrawals_withdrawal_bytxid;;
    esac
}

function get_withdrawals_withdrawal()
{
    clear
    read -p 'Enter withdrawal uuid: ' uuid
    get_api_call "withdrawals/$uuid" "GET" "" "Retrieving withdrawal"
    echo "1. New Query"
    echo "2. Withdrawals Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_withdrawals_withdrawal;;
        "2") print_withdrawals_menu;;
        "3") print_main_menu;;
        *) get_withdrawals_withdrawal;;
    esac
}

function get_withdrawals_whitelist()
{
    get_api_call "withdrawals/whitelistAddresses" "GET" "" "Retrieving white listed addresses..."
    echo "1. Refresh This"
    echo "2. Withdrawals Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_withdrawals_whitelist;;
        "2") print_withdrawals_menu;;
        "3") print_main_menu;;
        *) get_withdrawals_whitelist;;
    esac
}
