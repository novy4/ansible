cnt=$(cat dashboards/final/NOIA_CACHE.json | grep XXX | wc -l)
#echo $cnt

for f in $(seq 0 $(($cnt - 1)))
do
x=$(($f%12*2))
y=$(($f*2/24*3))
#echo $x
#echo $y
#sed -i '0,/XXX/s//'"$x"'/' dashboards/final/NOIA_CACHE.json
#sed -i '0,/YYY/s//'"$y"'/' dashboards/final/NOIA_CACHE.json
awk 'NR==1,/XXX/{sub(/XXX/,"'$x'")}1' dashboards/final/NOIA_CACHE.json > temp.json && mv temp.json dashboards/final/NOIA_CACHE.json
awk 'NR==1,/YYY/{sub(/YYY/,"'$y'")}1' dashboards/final/NOIA_CACHE.json > temp.json && mv temp.json dashboards/final/NOIA_CACHE.json
done
