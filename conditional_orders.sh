#!/bin/bash

#################################################
# ------------ 4. Conditional Orders ------------
#################################################

function get_conditional_order()
{
    clear
    read -p 'Enter order uuid: ' uuid
    get_api_call "conditional-orders/$uuid" "GET" "" "Retrieving order..."
    echo "1. New Query"
    echo "2. Conditional Orders Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_conditional_order;;
        "2") print_conditional_orders_menu;;
        "3") print_main_menu;;
        *) get_conditional_order;;
    esac
}

function delete_conditional_order()
{
    clear
    echo "Not implemented yet"
    echo "1. Conditional Orders Menu"
    echo "2. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") print_conditional_orders_menu;;
        "2") print_main_menu;;
        *) delete_conditional_order;;
    esac
}

function get_conditional_orders_closed()
{
    clear
    get_api_call "conditional-orders/closed" "GET" "" "Retrieving closed orders..."
    echo "1. Refresh This"
    echo "2. Conditional Orders Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_conditional_orders_closed;;
        "2") print_conditional_orders_menu;;
        "3") print_main_menu;;
        *) get_conditional_orders_closed;;
    esac
}

function get_conditional_orders_open()
{
    clear
    get_api_call "conditional-orders/open" "GET" "" "Retrieving open orders..."
    echo "1. Refresh This"
    echo "2. Conditional Orders Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_conditional_orders_open;;
        "2") print_conditional_orders_menu;;
        "3") print_main_menu;;
        *) get_conditional_orders_open;;
    esac
}

function post_conditional_order()
{
    clear
    echo "Not implemented yet"
    echo "1. Conditional Orders Menu"
    echo "2. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") print_conditional_orders_menu;;
        "2") print_main_menu;;
        *) delete_conditional_order;;
    esac
}
