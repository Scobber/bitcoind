#!/bin/bash
echo Starting
/bin/bitcoind -datadir=/data
#bfgminer -o http://127.0.0.1:8332 -u user -p password --generate-to $PAYOUTADD --coinbase-sig "$COINBASE" --stratum-port 8000
cgminer -o http://localhost:8332 -u user -p password --btc-address $PAYOUTADD

