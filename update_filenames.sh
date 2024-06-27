#!/bin/bash

set -e

OLDNAME=GMOD_Nomination:_ISGA
NEWNAME=GMOD_Nomination%3A_ISGA

git mv News/$OLDNAME.md News/$NEWNAME.md

perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' *
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*/*
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*/*/*
perl -pi -e 'BEGIN{undef $/;} s/\Q$OLDNAME\E/$NEWNAME/smg' */*/*/*/*
