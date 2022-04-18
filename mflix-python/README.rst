=====
mflix
=====

This is a short guide on setting up the system and environment dependencies
required for the MFlix application to run.

**Disclaimer:** The dependencies and versions in this project are not
maintained. This project is intended for educational purposes and is **not**
intended to be exposed in a network, so use at your own discretion.

Project Structure
-----------------

Everything you will implement is located in the ``mflix/db.py`` file, which
contains all database interfacing methods. The API will make calls to ``db.py``
to interact with MongoDB.

The unit tests in ``tests`` will test these database access methods directly,
without going through the API. The UI will run these methods in integration
tests, and therefore requires the full application to be running.

The API layer is fully implemented, as is the UI. If you need to run on a port
other than 5000, you can edit the ``index.html`` file in the build directory to
modify the value of **window.host**.

Please do not modify the API layer in any way, ``movies.py`` and ``user.py``
under the **mflix/api** directory. Doing so will most likely result in the
frontend application failing to validate some of the labs.


Local Development Environment Configuration
-------------------------------------------

Anaconda
~~~~~~~~

We're going to use `Anaconda <https://anaconda.org/>`_ to install Python 3 and
to manage our Python 3 environment.

**Installing Anaconda for Mac**

You can download Anaconda from their `MacOS download site
<https://www.anaconda.com/download/#macos>`_. The installer will give you
the option to "Change Install Location", so you can choose the path where the
``anaconda3`` folder will be placed. Remember this location, because you will
need it to activate the environment.

Once installed, you will have to create and activate a ``conda`` environment:

.. code-block:: sh

  # navigate to the mflix-python directory
  cd mflix-python

  # enable the "conda" command in Terminal
  echo ". /anaconda3/etc/profile.d/conda.sh" >> ~/.bash_profile
  source ~/.bash_profile

  # create a new environment for MFlix
  conda create --name mflix

  # activate the environment
  conda activate mflix

You can deactivate the environment with the following command:

.. code-block:: sh

  conda deactivate

**Installing Anaconda for Windows**

You can download Anaconda from their `Download site
<https://www.anaconda.com/download/>`_. Please be careful to select ``Windows Tab`` before downloading.

The Anaconda installer will prompt you to *Add Anaconda to your PATH*. Select
this option to use ``conda`` commands from the Command Prompt.

If you forget to select this option before installing, no worries. The installer
will let you choose an "Install Location" for Anaconda, which is the directory
where the ``Anaconda3`` folder will be placed.

Using your machine's location of ``Anaconda3`` as ``<path-to-Anaconda3>``, run
the following commands to activate ``conda`` commands from the Command Prompt::

  set PATH=%PATH%;<path-to-Anaconda3>;<path-to-Anaconda3>\Scripts\

Once installed, you will have to create and enable a ``conda`` environment.

.. code-block:: sh

  # enter mflix-python folder
  cd mflix-python

  # create a new environment for MFlix
  conda create --name mflix

  # activate the environment
  activate mflix

You can deactivate the environment with the following command:

.. code-block:: sh

  deactivate


Virtualenv
~~~~~~~~~~

*Note: If you installed Anaconda instead, skip this step.*

As an alternative to Anaconda, you can also use ``virtualenv``, to define your
Python 3 environment. You are required to have a Python 3 installed in your
workstation.

You can find the `virtualenv installation procedure`_ on the PyPA website.

Once you've installed Python 3 and ``virtualenv``, you will have to setup a
``virtualenv`` environment:

.. code-block:: sh

  # navigate to the mflix-python directory
  cd mflix-python

  # create the virtual environment for MFlix
  virtualenv -p YOUR_LOCAL_PYTHON3_PATH mflix_venv

  # activate the virtual environment
  source mflix_venv/bin/activate

You can deactivate the virtual environment with the following command:

.. code-block:: sh

  deactivate

.. _`virtualenv installation procedure`: https://virtualenv.pypa.io/en/stable/installation/

Please remember that you may have to reactivate the virtual environment if you
open a new Terminal or Command Prompt window, or restart your system.


Python Library Dependencies
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once the Python 3 environment is activated, we need to install our python
dependencies. These dependencies are defined in the ``requirements.txt`` file,
and can be installed with the following command:

.. code-block:: sh

  pip install -r requirements.txt


Running the Application
-----------------------

In the ``mflix-python`` directory there are two files, called ``dotini_unix``
and ``dotini_win``.

Rename this file to ``.ini`` with the following command:

.. code-block:: sh

  mv dotini_unix .ini  # on Unix
  ren dotini_win .ini # on Windows

Once the file has been renamed, open it, and enter your Atlas SRV connection
string as directed in the comment. This is the information the driver will use
to connect!

To start MFlix, run the following command:

.. code-block:: sh

  python run.py


And then point your browser to `http://localhost:5000/<http://localhost:5000/>`_.


Running the Unit Tests
----------------------

To run the unit tests for this course, you will use ``pytest``. Each course lab
contains a module of unit tests that you can call individually with a command
like the following:

.. code-block:: sh

  pytest -m LAB_UNIT_TEST_NAME

Each ticket will contain the command to run that ticket's specific unit tests.
