#!/usr/bin/bash

echo > doc.html; for i in $(find docCache); do echo "<a href='$i'>$i</a><br />" >> doc.html; done
