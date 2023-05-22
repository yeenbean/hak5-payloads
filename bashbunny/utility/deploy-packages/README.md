# Deploy packages

Quickly and easily deploy a suite of software to workstations with this easy to
use payload. All you have to do is place your MSI and EXE installers in the
Packages subdirectory, then plug the bunny into your target machine. When all
installs have finished, eject the bunny and it will safely power itself off.

## Dependencies

Target: Microsoft Windows with PowerShell 3 or newer.

Dependencies: None.

## States and stages

| LED States            |                       |
| --------------------- | --------------------- |
| Magenta               | Preparing             |
| Yellow blink          | Executing script      |
| Blue blink            | Waiting for eject     |
| White rapid blinking  | Powering off          |
| Off, after above      | Powered off           |

### Stages

- **Preparation stage (Magenta LED):** Bunny is setting up attack mode and mounting storage
on host.
- **Installation stage (Yellow blinking LED):** Bunny is executing the script.
- **Waiting stage (Blue blinking LED):** Bunny is waiting to be ejected from
host.
- **Power off stage (White blinking LED):** Bunny was ejected from host machine
and is now powering off.

## Attributions

- [yeenbean](https://github.com/yeenbean)
