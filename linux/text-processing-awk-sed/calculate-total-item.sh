#!/bin/bash

awk '
BEGIN{
    total=0;
    print "Calculator ready. Total is initialised to:",total
}
{
    total+=$2;
    print "Added", $1, "("$2") - Current Total:", total
}
END{
    print "There are", total, "items in the basket."
}
' $1
