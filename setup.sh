#!/bin/bash

PKGs='build-essential'

if [[ ! -f /usr/bin/mysql_config ]] ; then
	PKGs=$PKGs' libmysqlclient-dev'
fi

sudo apt-get install -y $PKGs

if [[ -f requirements.txt ]] ; then
	if [[ ! -d venv ]] ; then
		virtualenv --distribute venv/
	fi

	venv/bin/easy_install -U distribute

	venv/bin/pip install -r requirements.txt
fi
