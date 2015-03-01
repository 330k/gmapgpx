#!/bin/bash

options="--compress-js --compress-css --preserve-comments --remove-intertag-spaces --remove-quotes --remove-style-attr --remove-link-attr --remove-script-attr --remove-form-attr --remove-surrounding-spaces all"
java -jar htmlcompressor-1.5.3.jar $options -o ../create_gpx_route.html ../create_gpx_route_org.html 
java -jar htmlcompressor-1.5.3.jar $options -o ../create_gpx_route_mobile.html ../create_gpx_route_mobile_org.html 

