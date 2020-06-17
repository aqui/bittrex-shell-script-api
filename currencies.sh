#!/bin/bash

#########################################
# ------------ 5. Currencies ------------
#########################################

function get_currencies()
{
    clear
    get_api_call "currencies" "GET" "" "Retrieving currencies..."
    echo "1. Refresh This"
    echo "2. Currencies Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_currencies;;
        "2") print_currencies_menu;;
        "3") print_main_menu;;
        *) get_currencies;;
    esac
}

function get_currency()
{
    clear
    read -p 'Enter currency symbol: ' currency
    get_api_call "currencies/$currency" "GET" "" "Retrieving currency..."
    echo "1. New Query"
    echo "2. Currencies Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_currency;;
        "2") print_currencies_menu;;
        "3") print_main_menu;;
        *) get_currency;;
    esac
}
