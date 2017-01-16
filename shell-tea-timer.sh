#!/usr/bin/env bash

export tea_type=""
export tea_infusion_counter=0
export tea_initial_infusion=0
export tea_next_infusion=0

TEA_TYPE_WHITE="white"
TEA_TYPE_GREEN="green"
TEA_TYPE_OOLONG_STRIP="oolong-strip"
TEA_TYPE_OOLONG_ROLLED="oolong-ball"
TEA_TYPE_PUERH_RAW="puerh-raw"
TEA_TYPE_PUERH_RIPE="puerh-ripe"

function tea()
{
    tea_usage="$0 [-r] <tea-type>
-r          reset infusion counter
<tea-type>  $TEA_TYPE_WHITE - white tea
            $TEA_TYPE_GREEN - green tea
            $TEA_TYPE_OOLONG_STRIP - oolong tea (strips)
            $TEA_TYPE_OOLONG_ROLLED - oolong tea (balls)
            $TEA_TYPE_PUERH_RAW - raw (sheng, green) puerh tea
            $TEA_TYPE_PUERH_RIPE - ripe (shu, red) puerh tea
"

    if [[ $# -lt 1 ]]; then
        >&2 echo "$tea_usage"
        return 1
    fi

    if [[ $# -eq 1 ]] && [[ "$1" == "-r" ]]; then
        tea_infusion_counter=0
    elif [[ $# -eq 2 ]]; then
        tea_infusion_counter=0
        tea_type="$2"
    else
        tea_type="$1"
    fi
    
    tea_infusion_counter=$(( $tea_infusion_counter + 1 ))

    # infusion times set according Mei Leaf (https://meileaf.com)
    # available at http://chinalifeweb.com/guides/the-tea-brewing-chart/
    case $tea_type in
        "$TEA_TYPE_WHITE")
            tea_initial_infusion=20
            tea_next_infusion=10
        ;;

        "$TEA_TYPE_GREEN")
            tea_initial_infusion=15
            tea_next_infusion=3
        ;;

        "$TEA_TYPE_OOLONG_STRIP")
            tea_initial_infusion=20
            tea_next_infusion=5
        ;;

        "$TEA_TYPE_OOLONG_ROLLED")
            tea_initial_infusion=25
            tea_next_infusion=5
        ;;

        "$TEA_TYPE_PUERH_RAW")
            tea_initial_infusion=10
            tea_next_infusion=3
        ;;

        "$TEA_TYPE_PUERH_RIPE")
            tea_initial_infusion=10
            tea_next_infusion=5
        ;;

        *)
            >&2 echo "Unknown tea type.\n"
            >&2 echo "$tea_usage"
            return 1
        ;;
    esac

    tea_countdown=$(( $tea_initial_infusion + ($tea_infusion_counter - 1) * $tea_next_infusion ))

    echo "This is your ${tea_infusion_counter}th infusion."
    echo "Infusing for ${tea_countdown} seconds."
    sleep $tea_countdown
    say "Do píči čaj." &
}