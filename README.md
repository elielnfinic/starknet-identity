# Identity on Starknet

This is an experiment on saving identity information on the Starknet Layer 2 blockchain.  
For now, the data might be public but the objective of this research is to allow data privacy on the blockchain as I believe we need privacy on blockchains to allow personal and corporate use of it.  


# Test the program  

This is a simple `Cairo Lang` program using `protostar`.  

For you to test, run `protostar test ./tests` 

# Deployment on Starknet 

To deploy this program on Starknet, make sure you have `protostar` configured for deployment on your computer then you can run `protostar deploy CLASS_HASH --network testnet --max-fee auto --account-address YOUR_ADDRESS --private-key-path PATH_TO_YOUR_PRIVATE_KEY` 

