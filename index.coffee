#!/usr/bin/env coffee

program = require 'commander'
secrets = require 'secrets.js'

program.
command('share <secret>')
.option('-m <m>', 'Threshold (m out of n)', parseInt)
.option('-n <n>', 'Number of shares', parseInt)
.action (secret, options)->
  secretHex = secrets.str2hex secret
  m = options.M
  n = options.N
  console.log secretHex, m, n
  shares = secrets.share secretHex, n, m
  console.log shares

program.command('combine [shares...]')
.action (shares)->
  secretHex = secrets.combine shares
  secret = secrets.hex2str secretHex
  console.log secret

program.parse process.argv
