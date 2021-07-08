for cat in $(cat categories.txt); do grep "^\"\[$cat" full-list.txt >"$cat".list; done
