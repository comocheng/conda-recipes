#!/bin/bash
# A wrapper to set up the environment and call MOPAC2012.exe
MOPAC_LICENSE=/opt/anaconda1anaconda2anaconda3/opt/mopac/ LD_LIBRARY_PATH=/opt/anaconda1anaconda2anaconda3/opt/mopac/ /opt/anaconda1anaconda2anaconda3/opt/mopac/MOPAC2012.exe "$@"
