#!/bin/bash

# Set default value for EXPORT_ROOT if not provided
EXPORT_ROOT=${EXPORT_ROOT:-/data}

# Create a directory with current date
DATE=$(date +%Y%m%d)
EXPORT_DIR="${EXPORT_ROOT}/n8n-${DATE}"
mkdir -p "$EXPORT_DIR"

# Export n8n workflows to the directory
n8n export:workflow --all --output="$EXPORT_DIR"

echo "Workflows exported to $EXPORT_DIR"
