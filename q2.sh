#!/bin/bash
sed '/^$/d' quotes.txt | awk 'BEGIN { FS="~" } { print $2, "once said, " "\"" $1"\"" }' > speech.txt
