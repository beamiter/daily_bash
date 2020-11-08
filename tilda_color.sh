#!/bin/bash

read -p "Enter color scheme name: " color_scheme

while [ ! -f "$color_scheme" ]
do
  read -p "Please input valid color scheme name: " color_scheme
done

echo "selected color scheme: $color_scheme"

tilda_config=$HOME/.config/tilda/config_0
echo "target tilda config path: $tilda_config"

cat $color_scheme >> $tilda_config
