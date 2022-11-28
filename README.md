# Shell Tea Timer

Tracks tea infusions & guides through Gong Fu Cha tea session.

```
$ shell-tea-timer

Welcome to Shell Tea Timer

What would you like to do? Start new session

Choose a tea you want to brew:: Day Drinking Diva (raw, sheng)

Choose a pot you want to brew in: White Broken Zhong 100 ml

Heat your water to 95°C.

Use 4.0 g of leaves (5 g per 100 ml, pot capacity is 80 ml).

Press [enter] when you are ready to start.

You are brewing Day Drinking Diva (raw, sheng) in White Broken Zhong 100 ml pot.
This is your 1st infusion out of 10.
Infuse for 20 seconds in 95°C water.
Decanting should start 0 seconds earlier.

<==========>  100% finished (0 seconds)

Decant your tea now!

How would you like to continue? End session

Thank you for using Shell Tea Timer (by Jiří Málek).
```

## Installation

**Important:** bash v3.2 and higher is required

1) Download archive from [the release page](https://github.com/Hologos/shell-tea-timer/releases) and unpack it.
2) Create tea and pot configuration files (follow instructions in section [Configuration files](#configuration-files)).
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
shell-tea-timer [-h] [-c <configs-dirpath>]

    -h
        Prints this help.

    -c <configs-dirpath>
        Dirpath to configs directory.

Environment variables
    STT_CONFIG_DITPATH - dirpath to configs directory
```

You either have to specify the dirpath to configuration files via an argument `-c` or you can set an environment variable `STT_CONFIG_DITPATH`.

### Configuration files

You can make your own set of tea & pot configuration files. This project comes with generic configuration files, courtesy of [Mei Leaf](https://meileaf.com).

**Tea example:**

```bash
TEA_NAME="Generic Green Tea"
TEA_INITIAL_INFUSION_DURATION=15
TEA_NEXT_INFUSION_DURATION=3
TEA_NUMBER_OF_INFUSIONS=5
TEA_BREWING_TEMP=80
TEA_AMOUNT_PER_100G=3.5
```

**Pot example:**

```bash
POT_NAME="Generic 200 ml"
POT_DECANT_DURATION=5
POT_CAPACITY_WITH_LEAVES=180
```

## Keywords

- tea timer
- gong fu cha
