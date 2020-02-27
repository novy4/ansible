id=$(expr $(cat dashboards/source/000-header.json.j4| grep version | awk '{print $2}' | awk -F',' '{print $1}') + 1)

#sed -i 's|\"version\"\: .*|\"version\"\: '$id',|g' dashboards/source/000-header.json.j4
awk '{gsub(/"version": .*/,"\"version\": '$id',")}1' dashboards/source/000-header.json.j4 > dashboards/source/000-header.json.j4.tmp
mv dashboards/source/000-header.json.j4.tmp dashboards/source/000-header.json.j4