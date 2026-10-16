#!/bin/bash

awk '
    BEGIN{
        total=0;
        print "Calculator ready. Total is initialised to:",total
}
' $1
