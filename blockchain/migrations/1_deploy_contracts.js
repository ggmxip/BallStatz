const NBAStats = artifacts.require("NBAStats");

module.exports = function (deployer) {
  deployer.deploy(NBAStats);
};
