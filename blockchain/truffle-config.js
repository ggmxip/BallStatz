module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", // Localhost (Ganache)
      port: 7545,         // Standard Ganache port
      network_id: "*"     // Any network
    }
  },
  compilers: {
    solc: {
      version: "0.8.0",  // Set this to the required version, e.g., "0.8.0"
    }
  }
};
