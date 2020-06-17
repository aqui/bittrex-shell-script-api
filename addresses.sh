#!/bin/bash

########################################
# ------------ 2. Addresses ------------
########################################

function get_address()
{
    get_api_call "addresses" "GET" "" "Retrieving address details..."
    echo "Address details retrieved"
    echo "1. Refresh This"
    echo "2. Addresses Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_address;;
        "2") print_address_menu;;
        "3") print_main_menu;;
        *) get_address;;
    esac
}

function post_address()
{
    clear
    read -p 'Enter currency symbol: ' currency
    post_api_call "addresses" "POST" "{\"currencySymbol\":\"$currency\"}" "Creating wallet..."
    echo "1. Create New One"
    echo "2. Addresses Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") post_address;;
        "2") print_address_menu;;
        "3") print_main_menu;;
        *) post_address;;
    esac
}

function get_currency_address()
{
    clear
    read -p 'Enter currency symbol: ' currency
    get_api_call "addresses/$currency" "GET" "" "Retrieving currency address..."
    echo "1. New Query"
    echo "2. Addresses Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_currency_address;;
        "2") print_address_menu;;
        "3") print_main_menu;;
        *) get_currency_address;;
    esac
}
