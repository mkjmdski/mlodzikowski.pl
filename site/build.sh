#!/bin/bash

function generate_file {
    output="$1"
    title="$2"
    weight="$3"
    (
        export title weight
        envsubst < /site/hack_index.template > $output
    )
}

function build_hugo {
    modules=(main presentations)
    for module in ${modules[@]}; do (
        cd $module
        echo "Building $module..."
        if [ "$module" != "main" ]; then
            baseURL="$baseURL/$module"
        fi
        hugo --baseURL="$baseURL/"
    ) done
}

function symlink_presentations {
    weight=10
    presentation_root="/site/presentations/content"
    main_root="/site/main/content/presentations"
    find $presentation_root -maxdepth 1 -type d | \
        while read presentation; do
            if [ "$presentation" != "$presentation_root" ]; then
                pres_name="$(echo $presentation | rev | cut -d'/' -f 1 | rev)"
                generate_file "$main_root/$pres_name.md" $pres_name $weight
                let "weight+=10"
            fi
        done
}

function main {
    symlink_presentations
    build_hugo
}

main