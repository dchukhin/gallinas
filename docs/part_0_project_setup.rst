Project Setup
=============

Prerequisites
-------------

This project uses both a backend and a frontend setup, so you will need several
things installed before going further:

- the backend uses the PostgreSQL database, so you will need to install it.
  You may do so from the `downloads page <https://www.postgresql.org/download/>`_,
  or from the package manager on your computer (Homebrew, yum, apt, et cetera).
  You do not need to be a database guru to install the database, or to continue
  the tutorial.
- the backend uses Python3, so you will need to install it. Check out the python
  `download page <https://www.python.org/getit/>`_, or to download it using
  something like `pythonz <https://github.com/saghul/pythonz>`_ or Homebrew (for Macs).
- the frontend uses NodeJS, so you will need to install in on your computer.
  You may do so from the NodeJS `downloads page <https://nodejs.org/en/download/>`_,
  or by using a something like `nvm <https://github.com/creationix/nvm#install-script>`_
  to manage different versions of NodeJS on your computer.

Backend Setup
-------------

Note, you may skip the backend and frontend setup by having a script handle the
setup. You can do so by downloading the `backend_setup.sh` and calling this script
with the location of Python3 on your computer::
    ./backend_setup.sh /home/location/of/your/python3/binary/file

The location of the Python3 binary on your computer will depend on how you
downloaded Python3, but you should be able to find it with one of the following
commands:
    which python3
    brew list python3
    pythonz locate <the version of python, like 3.6.0>


#. Setup a virtual environment for the backend

   For more information about why you should use a virtual environment, see
   `an article about using Python virtual environments
   <https://realpython.com/python-virtual-environments-a-primer/>`_.

   We use a tool called `virtualenvwrapper <https://pypi.org/project/virtualenvwrapper/>`_
   to create a virtual environment for the backend. You will need to install it::

    pip install virtualenvwrapper

   and create a virtual environment for your project::

    mkvirtualenv gallinas

#. Clone the repository::

    git clone git@github.com:dchukhin/gallinas.git

   and move into the project directory::

    cd gallinas

#. Install the backend dependencies into your virtual environment::

    pip install -r requirements.txt

#. Create the database::

    createdb --encoding UTF-8 gallinas

#. Run the database migrations, so that the right database tables are created::

    python manage.py migrate

#. Load the default restaurants into the database::

    python manage.py loaddata fixtures/kuri/restaurant.json

#. Create a superuser (in case you want to access the data through the admin):

    python manage.py createsuperuser

Frontend Setup
--------------

#. Install all of the frontend dependencies::

    npm install

# Create a bundle of all of the JavaScript files::

    npm build

# Start the app and have the server watch for updates to any of the JS files::

    npm watch

   Running the server will print out the port number that the server is running
   on, something like::
    Starting development server at http://127.0.0.1:8000/

   You will need to use this port when your React app gets information from the
   backend API.



If you've gotten this far, congratulations! Let's move on to creating the React app!
