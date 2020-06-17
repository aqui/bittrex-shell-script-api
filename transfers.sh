#!/bin/bash

#########################################
# ------------ 11. Transfers ------------
#########################################

function get_transfers_sent()
{
    get_api_call "transfers/sent" "GET" "" "Retrieving sent transfers..."
    echo "1. Refresh This"
    echo "2. Transfers Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_transfers_sent;;
        "2") print_transfers_menu;;
        "3") print_main_menu;;
        *) get_transfers_sent;;
    esac
}

function get_transfers_received()
{
    get_api_call "transfers/received" "GET" "" "Retrieving received transfers..."
    echo "1. Refresh This"
    echo "2. Transfers Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_transfers_received;;
        "2") print_transfers_menu;;
        "3") print_main_menu;;
        *) get_transfers_received;;
    esac
}

function get_transfers_transfer()
{
    clear
    read -p 'Enter transfer uuid: ' uuid
    get_api_call "transfers/$uuid" "GET" "" "Retrieving transfer..."
    echo "1. New Query"
    echo "2. Transfers Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_transfers_transfer;;
        "2") print_transfers_menu;;
        "3") print_main_menu;;
        *) get_transfers_transfer;;
    esac
}
