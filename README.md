# Shell Tea Timer

Tracks tea infusions & guides you through Gong Fu Cha tea session.

```
$ shell-tea-timer

Welcome to Shell Tea Timer (v1.0, 1.12.2022 20:00:00)

What would you like to do? Start new session

Choose a tea you want to brew: Day Drinking Diva (raw, sheng)

Choose a pot you want to brew in: White Broken Zhong 100 ml

Do you want to modify brewing parameters? No

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

What should happen to this tea session? Log & remove tea session

Removing this tea session.

Saving tea session.

Thank you for using Shell Tea Timer (by hologos).
```

## Table of contents

* [Description](#description)
    * [Usage](#usage)
    * [Supported actions](#supported-actions)
    * [Finished tea infusion logging](#finished-tea-infusion-logging)
    * [Configuration files](#configuration-files)
* [Installation](#installation)
    * [Dependencies](#dependencies)
    * [Cloning repo](#cloning-repo)
* [Keywords](#keywords)

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
    STT_TEA_INFUSIONS_LOG_FILEPATH - filepath to finished tea infusions log file
```

You either have to specify a dirpath to configuration files via an argument `-c` or you can set an environment variable `STT_CONFIG_DITPATH`.

### Supported actions

Upon running the script, you can start new tea session or load an existing (unfinished) one.

Upon finishing single infusion, you can continue with another infusion, end the tea session or modify brewing parameters.

When you finish a tea session, you can either remove the tea session and save it for later.

### Finished tea infusion logging

Defining file via `STT_TEA_INFUSIONS_LOG_FILEPATH` enables you to save finished tea infusions into a CSV file.

```csv
Tea session start date & time;Tea name;Pot name;Amount of leaves;Water temperature;Infusion finish date & time;Infusion number;Infusion duration
02.12.2022-18:33;Generic Raw Puerh Tea (sheng, green);Generic 200 ml;9.0 g;95°C;02.12.2022-18:34;1st out of recommended 15;10 seconds
02.12.2022-18:33;Generic Raw Puerh Tea (sheng, green);Generic 200 ml;9.0 g;95°C;02.12.2022-18:34;2nd out of recommended 15;13 seconds
02.12.2022-18:34;Generic Green Tea;Generic 200 ml;6.3 g;80°C;02.12.2022-18:34;1st out of recommended 5;15 seconds
```

### Configuration files

_This project comes with generic configuration files, courtesy of [Mei Leaf](https://meileaf.com)._

You can make your own set of tea & pot configuration files.

The configuration folder has to have `pots` and `teas` subdirectory. Files have to have `.conf` file extension and required format (see bellow).

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

## Installation

**Important:** bash v3.2 and higher is required

1) Download archive from [the release page](https://github.com/Hologos/shell-tea-timer/releases) and unpack it.
2) Create tea and pot configuration files (follow instructions in section [Configuration files](#configuration-files)).
3) Run the script.

### Dependencies

If on macOS, make sure you have all those things installed:

- `brew/coreutils`: gnu utils prefixed with `g` (eg. `gdate`)

If on linux, make sure you have all those things installed:

- `espeak`: to hear audio announcements

Make sure you have all those things installed:

- `fzf`: to make this script interactable

### Cloning repo

**Important:** _If you forget to do `peru sync` after every update that contained changed `peru.yaml`, it can have undesirable consequences and can cause serious problems. Use at your own risk._

**Downloading files from release page is preferred!**

```bash
git clone https://github.com/Hologos/shell-tea-timer
peru sync
```

## Keywords

- tea timer
- gong fu cha
