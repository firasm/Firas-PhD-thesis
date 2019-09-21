#!/bin/bash

# This is a short script to get the short SHA-1 from sourcetree as the long one is super annoying. 
# To use this, you need to run chmod +x to give it execute priveleges and then add it as a script in the SourceTree custom actions.
# parameters can be left empty. 
## P.S. pbcopy copies it to clipboard

git rev-parse --short HEAD | /usr/bin/pbcopy