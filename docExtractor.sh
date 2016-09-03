if ! test -e doc
then
	mkdir doc
fi

for i in `find . -type f -name \*.sh`
do
	cat "$i" | grep -e "^#!" | sed 's/#!//'|sed 's/<(.*)>/\\1/'
done
	
