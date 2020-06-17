#!/bin/bash

###################################
# ------------ 9. Ping ------------
###################################

function get_ping()
{
    get_api_call "ping" "GET" "" "Retrieving balance details..."
    echo "1. Refresh This (You have to wait for a while)"
    echo "2. Main Menu"
    read -p 'Choice: ' choice
    case "$choice" in
        "1") get_ping;;
        "2") print_main_menu;;
        *) get_ping;;
    esac
}
