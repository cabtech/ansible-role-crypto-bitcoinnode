----
# ansible-role-crypto-bitcoinnode
Installs a full [Bitcoin](https://bitcoin.org/) node.
Note that downloads may be blocked in your country so use a proxy or Tor if needed.

## Required variables
None

## Defaulted variables
| Name | Type | Value | Comments |
| ---- | ---- | ----- | -------- |
| bitcoin_arch | string | `x86_64` ||
| bitcoin_mirror | string | `https://bitcoin.org/` ||
| bitcoin_opt_dir | UnixPath | `/opt` | where the binaries live |
| bitcoin_os | string | linux ||
| bitcoin_run_dir | UnixPath | `/var/lib/bitcoin` | where the blocks are written |
| bitcoin_svc_enabled | Boolean | true | is the service enabled |
| bitcoin_svc_name | string | bitcoin | service name |
| bitcoin_svc_state | string | started | service state |
| bitcoin_tmp_dir | UnixPath | `/var/tmp/bitcoin/downloads` ||
| bitcoin_user | string | satoshi | what else? |
| bitcoin_version | string | 25.0 ||

## Handy Links
- [Bitcoin's guide to set up a node](https://bitcoin.org/en/full-node)
- [Snap for Bitcoin client](https://snapcraft.io/bitcoin-core)
- [Config generator](https://jlopp.github.io/bitcoin-core-config-generator)

## Supported Distros
Ubuntu 18, 20, 22

****
