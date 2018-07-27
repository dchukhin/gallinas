#!/bin/bash
echo "########################################"
echo "Part I: installing virtualenvwrapper    "
echo "########################################"
pip install virtualenvwrapper

echo "########################################"
echo "Part II: making virtual environment     "
echo "########################################"
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv --python=$1 gallinas
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
echo "Part V: create the database             "
echo "########################################"
createdb --encoding UTF-8 gallinas
python manage.py migrate

echo "########################################"
echo "Part VI: load default data into database"
echo "########################################"
python manage.py loaddata fixtures/kuri/restaurant.json

echo "########################################"
echo "Part VII: running the server              "
echo "########################################"
# Find a port that is open, and run the server on it
for PORT_NUMBER in {8000..8100}
do
  NUM_PROCESSES=$(ps aux | grep "$PORT_NUMBER" | wc -l)
  if [ "$NUM_PROCESSES" -gt 1 ]
  then
    echo "port $PORT_NUMBER: busy"
  else
    echo "using port $PORT_NUMBER"
    break
  fi
done
python manage.py runserver $PORT_NUMBER
