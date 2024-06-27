#!/bin/bash

set -e

OLDNAME=GMOD_Meeting%3A_Sept._13-14
NEWNAME=GMOD_Meeting%3A_Sept._13-14

#git mv News/$OLDNAME.md News/$NEWNAME.md

perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' *
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*/*
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*/*/*
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*/*/*/*
