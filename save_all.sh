#!/bin/bash

# Define the output directory
OUTPUT_DIR="backup"

# Create the output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Dump the worldcup database to a file named worldcup.sql
pg_dump --username=freecodecamp --dbname=worldcup --file=$OUTPUT_DIR/worldcup.sql

# Save the contents of insert_data.sh and queries.sh to separate files
cp insert_data.sh $OUTPUT_DIR/insert_data.sh
cp queries.sh $OUTPUT_DIR/queries.sh

echo "All files have been saved to the $OUTPUT_DIR directory."
