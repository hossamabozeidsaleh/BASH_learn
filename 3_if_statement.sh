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
[ "$degree" -gt "80" ] && echo "very good" || echo "good"

# gt (>)
# lt (<)
# ge (>=)
# le (<=)
# eq (=)
# ne (!=)



