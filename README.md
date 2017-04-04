# secrets-tool
A tool for sharing secrets using Shamir secret sharing.
A wrapper for the lovely secrets.js package.

## Installation
```
npm install -g coffee-script
npm install -g secrets-tool
```

## Usage:

Sharing a secret:
```
secrets-tool share -m 3 -n 5 abc
  //'801bd1f1f19c37683'
  //'802edfab962c03cae'
  //'80351e5c57b614a4c'
  //'804dade4299e81fba'
  //'80566c13e80496958'
```

Combining shares to get the original secret back:
```
secrets-tool combine 801bd1f1f19c37683 802edfab962c03cae 80351e5c57b614a4c
  //abc
```
