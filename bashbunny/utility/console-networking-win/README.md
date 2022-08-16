# console-networking-win

This payload gives you access to the Bash Bunny's console, as well as allowing
you to bridge your network with its emulated interface. With networking enabled,
you can update and install new packages, download payloads directly from GitHub,
and even run a server on your BB. Only your imagination is the limit.

## Configuration requirements

Along with setting up serial console access, you'll need to enable network
sharing on your host's main network adapter and share it with the Bash Bunny's
network interface. You will also need to statically assign the network
configuration on the BB's interface. For detailed instructions,
[review Hak5's documentation](https://docs.hak5.org/bash-bunny/internet-connectivity/sharing-an-internet-connection-from-windows).
