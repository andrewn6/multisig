var MultiSig = artifacts.require("MultiSigWallet")
var SimpleStorage = artifacts.require("SimpleStorage")

module.exports = function(deployer, network, accounts) {
  const owners = [accounts[0], accounts[1]]
  
  // deploy simple storage contract
  deployer.deploy(SimpleStorage);
  // Deploy main multisig contract
  deployer.deploy(MultiSig, owners, 2)
};
