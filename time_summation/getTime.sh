#!/bin/bash
FILES="."
sum=0
for f in *.mp4
do
   echo "$f"
   a=$(echo "$f")
   min=$(ffmpeg -i "$f" 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,// | cut -d ":" -f2)
   sec=$(ffmpeg -i "$f" 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,// | cut -d ":" -f3 | cut -d "." -f1)
   # echo "$min $sec"
   sum=$((10#$sum+10#$min*60+(10#$sec)))
   # echo "Total: $sum seconds of video"
done
echo "Total: $((sum/3600)) hours of video"
