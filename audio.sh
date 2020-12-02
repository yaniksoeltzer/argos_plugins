#!/usr/bin/env bash
echo "Audio | iconName=starred"
echo "---"

set_audio | while read line 
do
  name="${line:2:${#line}}"
  index="${line:0:1}"
  echo "$name | iconName=audio-card terminal=false bash='set_audio $index' refresh=true"
done
