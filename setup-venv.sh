#!/bin/bash

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

echo ""
echo "✓ Virtual environment setup complete!"
echo ""
echo "To use the CLI:"
echo "  1. Activate the virtual environment: source venv/bin/activate"
echo "  2. Run commands like: ./todo today \"Go to gym\""
echo ""
echo "Or you can use it directly without activating venv since we use #!/usr/bin/env python3"