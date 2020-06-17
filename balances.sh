#!/bin/bash

#######################################
# ------------ 3. Balances ------------
#######################################

function get_balances()
{
    get_api_call "balances" "GET" "" "Retrieving balances..."
    echo "1. Refresh This"
    echo "2. Balances Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_balances;;
        "2") print_balances_menu;;
        "3") print_main_menu;;
        *) get_balances;;
    esac
}

function get_balance()
{
    clear
    read -p 'Enter currency symbol: ' currency
    get_api_call "balances/$currency" "GET" "" "Retrieving currency balance..."
    echo "1. New Query"
    echo "2. Balances Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_balance;;
        "2") print_balances_menu;;
        "3") print_main_menu;;
        *) get_balance;;
    esac
}
