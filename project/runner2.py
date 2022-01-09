#!/usr/bin/env python

import time

time.sleep(15)

./manage.py migrate
./manage.py updatecatalog
./manage.py collectstatic
./manage.py runserver
