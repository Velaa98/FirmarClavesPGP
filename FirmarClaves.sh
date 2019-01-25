#!/usr/env/env bash

#while IFS=\/n read KeyID
#do
#	gpg --quick-sign-key $KeyID
#	gpg --keyserver pgp.rediris.es --send-keys $KeyID
#done < claves.txt
for KeyID in $(cat prueba)
do
	gpg --quick-sign-key $KeyID
	gpg --keyserver pgp.rediris.es --send-keys $KeyID
done < claves.txt
