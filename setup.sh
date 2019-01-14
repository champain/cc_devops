#!/usr/bin/env bash
python3 --version
pip3 search virtualenv
sudo pip3 install virtualenv
python3 -m virtualenv Devops
source Devops/bin/activate

pip install django
pip freeze > requirements.txt
python -m django --version
django-admin startproject firstProject
git init .
python manage.py startapp hello
python manage.py runserver

docker run -p 80:8000/tcp build_container
