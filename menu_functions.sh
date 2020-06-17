#!/bin/bash

##########################################
# ------------ Menu Functions ------------
##########################################

###################################
# ------------ Account ------------
###################################

function print_account_menu()
{
    clear
    echo "Accounts Menu"
    echo "1. Account"
    echo "2. Account Volume"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_account;;
        "2") get_account_volume;;
        "3") print_main_menu;;
        *) print_account_menu;;
    esac
}

#####################################
# ------------ Addresses ------------
#####################################

function print_address_menu()
{
    clear
    echo "Addresses Menu"
    echo "1. Addresses"
    echo "2. Create a Wallet (Needs Wirhdraw Permission)"
    echo "3. Get Currency Address"
    echo "4. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_address;;
        "2") post_address;;
        "3") get_currency_address;;
        "4") print_main_menu;;
        *) print_address_menu;;
    esac
}

###################################
# ------------ Balances ------------
###################################

function print_balances_menu()
{
    clear
    echo "Balances Menu"
    echo "1. Balances"
    echo "2. Balance"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_balances;;
        "2") get_balance;;
        "3") print_main_menu;;
        *) print_balances_menu;;
    esac
}

##############################################
# ------------ Conditional Orders ------------
##############################################

function print_conditional_orders_menu()
{
    clear
    echo "Conditional Orders Menu"
    echo "1. Query Order" #done
    echo "2. Delete Order" #TODO
    echo "3. Closed Orders" #done
    echo "4. Open Orders" #done
    echo "5. New Conditional Order" #TODO
    echo "6. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_conditional_order;;
        "2") delete_conditional_order;;
        "3") get_conditional_orders_closed;;
        "4") get_conditional_orders_open;;
        "5") post_conditional_order;;
        "6") print_main_menu;;
        *) print_conditional_orders_menu;;
    esac
}

######################################
# ------------ Currencies ------------
######################################

function print_currencies_menu()
{
    clear
    echo "Currencies Menu"
    echo "1. Currencies"
    echo "2. Query Currency"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_currencies;;
        "2") get_currency;;
        "6") print_main_menu;;
        *) print_currencies_menu;;
    esac
}

####################################
# ------------ Deposits ------------
####################################

function print_deposits_menu()
{
    clear
    echo "Deposits Menu"
    echo "1. Open Deposits"
    echo "2. Closed Deposits"
    echo "3. Query Deposits by TxId"
    echo "4. Query Deposit"
    echo "5. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_deposits_open;;
        "2") get_deposits_closed;;
        "3") get_deposits_by_txid;;
        "4") get_deposit;;
        "5") print_main_menu;;
        *) print_currencies_menu;;
    esac
}

###################################
# ------------ Markets ------------
###################################

function print_markets_menu()
{
    clear
    echo "Markets Menu"
    echo "1. Markets"
    echo "2. Market Summaries"
    echo "3. Market Tickers"
    echo "4. Market Ticker"
    echo "5. Market Information"
    echo "6. Market Summary"
    echo "7. Market Order Book"
    echo "8. Market Trades"
    echo "9. Market Candles"
    echo "10. Market Candles with Interval"
    echo "11. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets;;
        "2") get_markets_summaries;;
        "3") get_markets_tickers;;
        "4") get_markets_currency_ticker;;
        "5") get_markets_currency_market;;
        "6") get_markets_currency_summary;;
        "7") get_markets_currency_order_book;;
        "8") get_markets_currency_trades;;
        "9") get_markets_currency_candles;;
        "10") get_markets_candles_interval;;
        "11") print_main_menu;;
        *) print_markets_menu;;
    esac
}

##################################
# ------------ Orders ------------
##################################

function print_orders_menu()
{
    clear
    echo "Orders Menu"
    echo "1. Closed Orders"
    echo "2. Open Orders"
    echo "3. Query an Order"
    echo "4. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_orders_closed;;
        "2") get_orders_open;;
        "3") get_orders_order;;
        "4") print_main_menu;;
        *) print_orders_menu;;
    esac
}

#####################################
# ------------ Transfers ------------
#####################################

function print_transfers_menu()
{
    clear
    echo "Transfers Menu"
    echo "1. Sent (Limited to partners only)"
    echo "2. Received (Limited to partners only)"
    echo "3. Get Transfer (Limited to partners only)"
    echo "4. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_transfers_sent;;
        "2") get_transfers_received;;
        "3") get_transfers_transfer;;
        "4") print_main_menu;;
        *) print_transfers_menu;;
    esac
}

########################################
# ------------ Widthdrawals ------------
########################################

function print_withdrawals_menu()
{
    clear
    echo "Withdrawals Menu"
    echo "1. Open Withdrawals"
    echo "2. Closed Withdrawals"
    echo "3. Query Withdrawal By TxId"
    echo "4. Query Withdrawal"
    echo "5. White Listed Addresses"
    echo "6. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_withdrawals_open;;
        "2") get_withdrawals_closed;;
        "3") get_withdrawals_withdrawal_bytxid;;
        "4") get_withdrawals_withdrawal;;
        "5") get_withdrawals_whitelist;;
        "6") print_main_menu;;
        *) print_withdrawals_menu;;
    esac
}

################################
# ------------ Exit ------------
################################

function quit()
{
    clear
    echo "Bye!"
}
