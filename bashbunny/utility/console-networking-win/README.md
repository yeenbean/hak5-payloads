# console-networking-win

This payload gives you access to the Bash Bunny's console, as well as allowing
you to bridge your network with its emulated interface. With networking enabled,
you can update and install new packages, download payloads directly from GitHub,
and even run a server on your BB. Only your imagination is the limit.

## Dependencies

Target: Microsoft Windows

Payload dependencies: None

You'll need to enable network sharing on your host's main network adapter and share it with the Bash Bunny's
network interface. You will also need to statically assign the network
configuration on the BB's interface. For detailed instructions,
[review Hak5's documentation](https://docs.hak5.org/bash-bunny/internet-connectivity/sharing-an-internet-connection-from-windows).

## LED States

| LED States       |                                        |
| ---------------- | -------------------------------------- |
| Solid magenta    | Bunny is configuring network interface |
| Flashing white   | Network is ready                       |

## Stages

**Setup stage** *(solid magenta)*

1. The bunny is configured to use one CPU core, and uses the ondemand CPU governor.
1. The attack mode is configured.

**Ready stage** *(Flashing white)*

When the LED begins to flash white, the bunny has finished setting up the network. Once appropriately configured, the bunny will be able to access the Internet.