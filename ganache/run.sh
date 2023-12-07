#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source "${SCRIPT_DIR}/config.sh"

ganache \
	--miner.defaultGasPrice=$GAS_PRICE \
	--database.dbPath=$DB_PATH \
	--logging.debug=$LOGGING_DEBUG \
	--wallet.deterministic=$WALLET_DETERMINISTIC \
	--wallet.defaultBalance=$DEFAULT_BALANCE \
	--chain.hardfork=$HARDFORK \
	--server.host=$SERVER_HOST \

echo "Ganache successfully started."

