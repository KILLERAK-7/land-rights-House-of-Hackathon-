from web3 import Web3
url="https://app.zeeve.io/shared-api/eth/1a15f5ef23cea2bf5ebf302f78f00629f86c3c855dce1a03/"
w3 = Web3(Web3.HTTPProvider(url))
print(w3.isConnected())
