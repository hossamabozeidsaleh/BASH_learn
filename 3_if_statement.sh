#!/bin/bash
echo "pleas enter your degree"
read degree 
if [ "$degree" -gt "50" ]
then
	echo "He Passed :)"
	#add the commint 
fi
if [ "$degree" -lt "50" ]
then
	echo "He Fail :("
fi

# Another way to use the if statment  
 [ "$degree" -eq "80" ] && echo "avrege" || echo "avrage" 

# gt (>)
# lt (<)
# ge (>=)
# le (<=)
# eq (=)
# ne (!=)



