#!/bin/bash

find ./ -iname "*.png" | xargs optipng -preserve -o7

options="--compress-js --compress-css --preserve-comments --remove-intertag-spaces --remove-quotes --remove-style-attr --remove-link-attr --remove-script-attr --remove-form-attr --remove-surrounding-spaces all"
java -jar htmlcompressor-1.5.3.jar $options -o ../create_gpx_route.html ../create_gpx_route_org.html 
java -jar htmlcompressor-1.5.3.jar $options -o ../create_gpx_route_mobile.html ../create_gpx_route_mobile_org.html 

echo '<?xml version="1.0" encoding="UTF-8" ?>
<Module>
  <ModulePrefs title="Create GPX Route with Google Maps API v3" height="600" scaling="false" />
  <Content type="html"><![CDATA[' > ../create_gpx_route_gadget.xml
cat ../create_gpx_route.html >> ../create_gpx_route_gadget.xml
echo ']]>
</Content>
</Module>' >> ../create_gpx_route_gadget.xml
