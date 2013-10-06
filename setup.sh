#!/bin/bash

if [[ ! -f /usr/bin/mysql_config ]] ; then
	sudo apt-get install -y libmysqlclient-dev
fi

if [[ -f requirements.txt ]] ; then
	if [[ ! -d venv ]] ; then
		virtualenv --distribute venv/
	fi

	venv/bin/easy_install -U distribute

	venv/bin/pip install -r requirements.txt
fi
