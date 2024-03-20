#!/bin/bash

echo "Running ETL to move hospital data from csvs to Neo4j..."

python hospital_bulk_csv_write.py
