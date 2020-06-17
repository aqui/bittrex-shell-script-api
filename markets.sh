#!/bin/bash

######################################
# ------------ 7. Markets ------------
######################################

function get_markets()
{
    get_api_call "markets" "GET" "" "Retrieving markets..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets;;
    esac
}

function get_markets_summaries()
{
    get_api_call "markets/summaries" "GET" "" "Retrieving market summaries..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_summaries;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_summaries;;
    esac
}

function get_markets_tickers()
{
    get_api_call "markets/tickers" "GET" "" "Retrieving market tickers..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_tickers;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_tickers;;
    esac
}

function get_markets_currency_ticker()
{
    echo "Retrieve the ticker for a specific market (e.g. ETH-USDT)"
    read -p 'Enter first currency symbol: ' first_currency
    read -p 'Enter second currency symbol: ' second_currency
    get_api_call "markets/$first_currency-$second_currency/ticker" "GET" "" "Retrieving market ticker..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_currency_ticker;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_currency_ticker;;
    esac
}

function get_markets_currency_market()
{
    echo "Retrieve information for a specific market (e.g. ETH-USDT)"
    read -p 'Enter first currency symbol: ' first_currency
    read -p 'Enter second currency symbol: ' second_currency
    get_api_call "markets/$first_currency-$second_currency" "GET" "" "Retrieving currency market..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_currency_market;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_currency_market;;
    esac
}

function get_markets_currency_summary()
{
    echo "Retrieve summary of the last 24 hours of activity for a specific market (e.g. ETH-USDT)"
    read -p 'Enter first currency symbol: ' first_currency
    read -p 'Enter second currency symbol: ' second_currency
    get_api_call "markets/$first_currency-$second_currency/summary" "GET" "" "Retrieving market summary..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_currency_summary;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_currency_summary;;
    esac
}

function get_markets_currency_order_book()
{
    echo "Retrieve the order book for a specific market (e.g. ETH-USDT)"
    read -p 'Enter first currency symbol: ' first_currency
    read -p 'Enter second currency symbol: ' second_currency
    get_api_call "markets/$first_currency-$second_currency/orderbook" "GET" "" "Retrieving market order book..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_currency_order_book;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_currency_order_book;;
    esac
}

function get_markets_currency_trades()
{
    echo "Retrieve the recent trades for a specific market (e.g. ETH-USDT)"
    read -p 'Enter first currency symbol: ' first_currency
    read -p 'Enter second currency symbol: ' second_currency
    get_api_call "markets/$first_currency-$second_currency/trades" "GET" "" "Retrieving market trades..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_currency_trades;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_currency_trades;;
    esac
}

function get_markets_currency_candles()
{
    echo "Retrieve recent candles for a specific market and candle interval (e.g. ETH-USDT)"
    read -p 'Enter first currency symbol: ' first_currency
    read -p 'Enter second currency symbol: ' second_currency
    read -p 'Enter interval (MINUTE_1: 1 day, MINUTE_5: 1 day, HOUR_1: 31 days, DAY_1: 366 days): ' interval
    get_api_call "markets/$first_currency-$second_currency/candles/$interval/recent" "GET" "" "Retrieving market candles..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_currency_candles;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_currency_candles;;
    esac
}

function get_markets_candles_interval()
{
    echo "Retrieve recent candles for a specific market and candle interval (e.g. ETH-USDT)"
    read -p 'Enter first currency symbol: ' first_currency
    read -p 'Enter second currency symbol: ' second_currency
    read -p 'Enter interval (MINUTE_1: 1 day, MINUTE_5: 1 day, HOUR_1: 31 days, DAY_1: 366 days): ' interval
    read -p 'Enter year: ' year
    read -p 'Enter month: ' month
    read -p 'Enter day: ' day
    get_api_call "markets/$first_currency-$second_currency/candles/$interval/historical/$year/$month/$day" "GET" "" "Retrieving market candles..."
    echo "1. Refresh This"
    echo "2. Markets Menu"
    echo "3. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_markets_candles_interval;;
        "2") print_markets_menu;;
        "3") print_main_menu;;
        *) get_markets_candles_interval;;
    esac
}
