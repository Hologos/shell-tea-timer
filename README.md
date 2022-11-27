# Shell Tea Timer

Tracks tea infusions & guides through Gong Fu Cha tea session.

```
$ shell-tea-timer

TODO: script output
```

## Installation

**Important:** bash v3.2 and higher is required

1) Download archive from [the release page](https://github.com/Hologos/shell-tea-timer/releases) and unpack it.
2) Create `stt.cfg` file (follow instructions in section [Configuration file](#configuration-file)) or pass the configuration as arguments.
3) Run the script.

### Dependencies

If on macOS, make sure you have all those things installed:

- `brew/coreutils`: gnu utils prefixed with `g` (eg. `gdate`)

Make sure you have all those things installed:

- `fzf`: to make this script interactable

### Cloning repo

**Important:** _If you forget to do `peru sync` after every update that contained changed `peru.yaml`, it can have undesirable consequences and can cause serious problems. Use at your own risk._

_Downloading files from release page is preferred._

```bash
git clone https://github.com/Hologos/shell-tea-timer
peru sync
```

## Description

### Usage

```
TODO: usage
```

You either have to specify the filepath to configuration file via an argument `-c` or you can set an environment variable `STT_CONFIG_FILEPATH`.

### Configuration file

You need to provide a mac address you want to fake and network interface to affect.

```ini
TODO: config sample
```

## Keywords

- tea timer
- gong fu cha
