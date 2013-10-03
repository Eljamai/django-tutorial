1. Tutoriel :

On commence par créer un nouveau dépôt, puis on *bootstrap* un nouveau environement Python virtuel :

* git init
* git remote add origin git@bitbucket.org:mounssif/dj-test.git
* nano .gitignore
* virtualenv --distribute venv
* venv/bin/pip Django django_extensions django_evolution Werkzeug flip MySQL-python
* venv/bin/pip install Django django_extensions django_evolution Werkzeug flip MySQL-python
* venv/bin/easy_install -U distribute
* venv/bin/pip install Django django_extensions django_evolution Werkzeug flip MySQL-python

