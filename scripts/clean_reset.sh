#!/bin/bash

# This script will clean and reset the flutter project

# To execute this script: drag and drop it in your terminal, and hit enter

# If permission denied error occurs, run in terminal: sudo chmod 755 'clean_reset.sh'

set -e

fvm flutter clean
cd ios && pod deintegrate && rm -rf .symlinks && rm Podfile.lock
cd .. && fvm flutter pub get
cd ios && pod install
cd ../
 
 
