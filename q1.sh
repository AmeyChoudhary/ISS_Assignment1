#!/bin/bash
sed '/^$/d' quotes.txt
awk '!visited[$0]++' quotes.txt
