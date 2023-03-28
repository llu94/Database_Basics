#!/bin/bash -e

#!/bin/bash
db_set () {
echo "$1,$2" >> database.txt
}

db_get () {
grep "^$1," database.txt | sed -e "s/^$1,//" | tail -n 1
}

db_set "name" "John Doe"
db_set "age" "30"
db_set "address" "123 Main St."

# Get data from the database
echo "Name: $(db_get "name")"
echo "Age: $(db_get "age")"
echo "Address: $(db_get "address")"
