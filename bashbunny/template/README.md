# Title of payload

A description of the payload.

## Dependencies

Target: Windows, macOS, Linux, or other.

Dependencies: none, impacket, responder, and so forth. Bonus points if you link to them.

## Configuration options

Describe your configuration options here and how to use them. For example:

Set `LOOTDIR` to the path which you want the exfiltrated data to be stored. By default, it is stored in the loot directory on udisk, which you can access in Arming Mode.

```sh
# Path 
LOOTDIR=/root/udisk/loot/quickcreds
```

## LED states

Describe the LED states your payload uses to indicate the execution process. A table is preferred.

| LED States           |                   |
| -------------------- | ----------------- |
| Solid magenta        | Setup stage       |
| Yellow blink         | Exfiltrating data |
| White rapid blinking | Cleaning up       |
| Green                | Complete          |

## Stages

In this section, you can describe the process of each stage of the payload. Though included above, it would be helpful to reiterate the LED states here.

## Attributions

- Your name
- A contributor’s name
- Link to profile on primary code repository host for bonus points