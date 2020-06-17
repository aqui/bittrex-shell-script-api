#!/bin/bash

#####################################
# ------------ 8. Orders ------------
#####################################

function get_orders_closed()
{
    get_api_call "orders/closed" "GET" "" "Retrieving closed orders.."
    echo "1. Refresh This"
    echo "2. Orders Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_orders_closed;;
        "2") print_orders_menu;;
        "3") print_main_menu;;
        *) get_orders_closed;;
    esac
}

function get_orders_open()
{
    get_api_call "orders/open" "GET" "" "Retrieving open orders.."
    echo "1. Refresh This"
    echo "2. Orders Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_orders_open;;
        "2") print_orders_menu;;
        "3") print_main_menu;;
        *) get_orders_open;;
    esac
}

function get_orders_order()
{
    clear
    read -p 'Enter order uuid: ' uuid
    get_api_call "orders/$uuid" "GET" "" "Retrieving order..."
    echo "1. New Query"
    echo "2. Orders Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_orders_order;;
        "2") print_orders_menu;;
        "3") print_main_menu;;
        *) get_orders_order;;
    esac
}
