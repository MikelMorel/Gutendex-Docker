#!/bin/bash

#cheat until wait for

sleep 15s

chmod +x ./manage.py

python3 manage.py migrate
echo "migrate done"
python3 manage.py updatecatalog 
echo 'updatecatalogdone'
echo yes | python3 manage.py collectstatic
echo "Runserver"
python3 manage.py runserver 0.0.0.0:8000

