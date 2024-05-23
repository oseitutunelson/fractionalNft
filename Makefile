-include .env

NETWORK_ARGS := --rpc-url http://localhost:8545 --private-key $(DEFAULT_ANVIL_KEY) --broadcast

ifeq ($(findstring --network sepolia,$(ARGS)),--network sepolia)
	NETWORK_ARGS := --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv
endif

deployNft:
	@forge script script/DeployNft.s.sol:DeployNft $(NETWORK_ARGS)

deployFractionalNft:
    @forge script script/DeployFractionalNft.s.sol:DeployFractionalNft $(NETWORK_ARGS)

mint:
	@forge script script/interactions.s.sol:MintNft ${NETWORK_ARGS}