#!/bin/bash

echo "Starting hospital RAG FastAPI service..."

uvicorn main:app --host 0.0.0.0 --port 8000
