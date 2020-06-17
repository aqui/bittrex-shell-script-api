#!/bin/bash

######################################
# ------------ 1. Account ------------
######################################

function get_account()
{
    get_api_call "account" "GET" "" "Retrieving account..."
    echo "1. Refresh This"
    echo "2. Accounts Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_account;;
        "2") print_account_menu;;
        "3") print_main_menu;;
        *) get_account;;
    esac
}

function get_account_volume()
{
    get_api_call "account/volume" "GET" "" "Retrieving account volume..."
    echo "1. Refresh This"
    echo "2. Accounts Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_account_volume;;
        "2") print_account_menu;;
        "3") print_main_menu;;
        *) get_account_volume;;
    esac
}
