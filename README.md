# TodoList contracts require:

```
pragma solidity >=0.4.22 <0.8.0;

```

#### Compiler truffle-config.js:

```

compilers: {
    solc: {
      version: "0.7.0",      // Fetch exact version from solc-bin (default: truffle's version)
    }
```

# how to run smart contracts with truffle:

Open the terminal panel in Visual Studio Code. Use the Ganache CLI to start the development blockchain by entering ``` ganache-cli``` on the command line.

for compiling the contracts:
```
truffle compile
```
on the different terminal, should running this command:
```
truffle migrate --reset
```
