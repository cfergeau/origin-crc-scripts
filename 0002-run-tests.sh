for f in *.list; do
	../../openshift-tests run  -o "${f%.list}.log" -f $f
	sleep 1m
done
