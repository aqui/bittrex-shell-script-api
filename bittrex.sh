#!/bin/bash

source api_keys.sh
source api_functions.sh
source menu_functions.sh
source account.sh
source addresses.sh
source balances.sh
source conditional_orders.sh
source currencies.sh
source deposits.sh
source markets.sh
source orders.sh
source ping.sh
source transfers.sh
source withdrawals.sh

################################
# ------------ Main ------------
################################

function print_main_menu() 
{
    clear
    echo "#######################"
    echo "----- Bittrex API -----"
    echo "#######################"
    echo "Main Menu"
    echo "1. Account"
    echo "2. Addresses"
    echo "3. Balances"
    echo "4. Conditional Orders"
    echo "5. Currencies"
    echo "6. Deposit"
    echo "7. Markets" 
    echo "8. Orders"
    echo "9. Ping"
    echo "10. Subaccounts"
    echo "11. Transfers"
    echo "12. Withdrawals"
    echo "13. Exit"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") print_account_menu;;
        "2") print_address_menu;;
        "3") print_balances_menu;;
        "4") print_conditional_orders_menu;;
        "5") print_currencies_menu;;
        "6") print_deposits_menu;;
        "7") print_markets_menu;;
        "8") print_orders_menu;;
        "9") get_ping;;
        "10") print_subaccounts_menu;;
        "11") print_transfers_menu;;
        "12") print_withdrawals_menu;;
        "13") quit;;
        *) print_main_menu;;
    esac
}

print_main_menu
