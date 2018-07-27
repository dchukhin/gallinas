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
- the frontend uses NodeJS, so you will need to install in on your computer.
  You may do so from the NodeJS `downloads page <https://nodejs.org/en/download/>`_,
  or by using a something like `nvm <https://github.com/creationix/nvm#install-script>`_
  to manage different versions of NodeJS on your computer.

Backend Setup
-------------

#. Setup a virtual environment for the backend

   For more information about why you should use a virtual environment, see
   `an article about using Python virtual environments
   <https://realpython.com/python-virtual-environments-a-primer/>`_.

   We use a tool called virtualenvwrapper to create a virtual environment for the
   backend. You will need to install it::

    pip install virtualenvwrapper

   and create a virtual environment for your project::

    mkvirtualenv gallinas

#. Clone the repository::

    git clone git@github.com:dchukhin/gallinas.git

   and move into the project directory::

    cd gallinas

#. Install the backend dependencies into your virtual environment::

    pip install -r requirements.txt
