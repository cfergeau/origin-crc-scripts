./openshift-tests   run --dry-run -o full-list.txt openshift/conformance  2>/dev/null
#cat full-list.txt|awk '{print $1}' |sed 's/"//' | grep -v -F  '][' |sort |uniq
cat full-list.txt|awk '{print $1}' |sed 's/\]\[.*/\]/' | sed 's/["]//g' | sort |uniq >categories.txt
