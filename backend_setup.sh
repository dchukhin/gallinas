#!/bin/bash
echo "########################################"
echo "Part I: installing virtualenvwrapper    "
echo "########################################"
pip install virtualenvwrapper==4.7.1

echo "########################################"
echo "Part II: making virtual environment     "
echo "########################################"
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv --python=$(pythonz locate 2.7.12) gallinas_10
echo $(python --version)

echo "########################################"
echo "Part III: cloning repository            "
echo "########################################"
git clone git@github.com:dchukhin/gallinas.git
cd gallinas

echo "########################################"
echo "Part IV: installing backend requirements"
echo "########################################"
pip install -r requirements.txt

echo "########################################"
echo "Part V: running the server              "
echo "########################################"
python manage.py runserver 8200
