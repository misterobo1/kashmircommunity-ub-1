#!/bin/bash

# Copyright (C) 2020 by sandy1709

echo "
                    :##    ###
                    '##   ##
                     ##:##
                     ##
                     ##:##
                     ##   ##
                    .##    ###     
                 
                    :'######
                    '##... ##
                     ##
                     ##
                     ##
                     ##::: ##:
                    . ######:: 
                 
"

echo "
'##::::'##::'######::'########:'########::'########:::'#######::'########:
 ##:::: ##:'##... ##: ##.....:: ##.... ##: ##.... ##:'##.... ##:... ##..::
 ##:::: ##: ##:::..:: ##::::::: ##:::: ##: ##:::: ##: ##:::: ##:::: ##::::
 ##:::: ##:. ######:: ######::: ########:: ########:: ##:::: ##:::: ##::::
 ##:::: ##::..... ##: ##...:::: ##.. ##::: ##.... ##: ##:::: ##:::: ##::::
 ##:::: ##:'##::: ##: ##::::::: ##::. ##:: ##:::: ##: ##:::: ##:::: ##::::
. #######::. ######:: ########: ##:::. ##: ########::. #######::::: ##::::
:.......::::......:::........::..:::::..::........::::.......::::::..:::::
"

FILE=/app/.git

if [ -d "$FILE" ] ; then
    echo "$FILE directory exists already."
else
    rm -rf userbot
    rm -rf .github
    rm -rf sample_config.py
    git clone https://github.com/Hanan3000/kashmircommunity-ub kashmircommunity-ub
    mv kashmircommunity-ub/userbot .
    mv kashmircommunity-ub/.github . 
    mv kashmircommunity-ub/.git .
    mv kashmircommunity-ub/sample_config.py .
    python ./.github/update.py
    rm -rf requirements.txt
    mv kashmircommunity-ub/requirements.txt .
    rm -rf kashmircommunity-ub
fi

python -m userbot
