These scripts are meant to run openshift conformance tests in smaller chunks.
This should help with smaller size/single node clusters, where some operators may unexpectedly restart when under load.
Before using these scripts, `openshift-tests` from https://github.com/openshift/origin is needed

The scripts should be run in order: 
- `0000-gen-categories.sh` gets the full lists of tests from `openshift-tests`, and generates a list of test categories (the first [] item in the name of each tests)
- `0001-gen-test-list.sh` uses the previously generated list of categories to generates lists of all tests in each category
- `0002-run-tests.sh` uses these lists of tests, and run each of them sequentially with a 1 minute wait between each category to let the cluster stabilize a bit
