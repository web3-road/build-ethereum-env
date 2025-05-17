module.exports = {
  solidity: "0.8.0",
  networks: {
    local: {
      url: "http://127.0.0.1:8545",
      accounts: {
        mnemonic: process.env.MNEMONIC || "test test test test test test test test test test test test",
      },
    },
  },
  paths: {
    artifacts: "./artifacts",
    sources: "./contracts",
    tests: "./test",
  },
};