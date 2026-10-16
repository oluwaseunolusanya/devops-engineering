#!/bin/bash

awk 'NR > 1 && $3 > 75 {print $0}' $1 > upper_quartile_report.txt
