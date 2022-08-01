#!/bin/bash

sh -c "sleep 1; open 'http://localhost:8888/docCache';" &
python -m SimpleHTTPServer 8888
