===========
  CI/CD for building libcamera on Raspbian (Bookworm)
===========


.. This repo allows you to cross-build libcamera deb package for raspberry pi using arm64 Docker image with QEMU arm64 platform emulation.
   It includes source files of last libcamera debian package, Docker image and github workflow that runs CI (build, test, release).

How to setup workflow locally:
---------------
1. First, fork this repo with your github account so you can run it with your selfhosted runner.

2. Add selfhosted runner to your fork following `github doc instruction`_. 

.. _github doc instruction: https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/add-runners

3. Install docker engine and docker buildx plugin on machine with configured selfhosted runner. 
   https://docs.docker.com/engine/install/debian

4. Clone repo from your fork: 

.. code::

   git clone https://github.com/your_github_user/libcamera-ci
   cd libcamera

5. To build new version of libcamera debian package you have to install debchanges with devscripts package and add commit to changelog:

.. code::

   sudo apt update && apt install devscripts 
   export EMAIL='John Smith <j.smith@mail.com>' && dch -n


6. Now we're ready to create and push tag that will trigger workflow:

.. code::

  git add deb-source/libcamera-0.0.3/
  git commit -m "release notes" 
  git tag -a v0.0.3-{release-version} -m "release notes" 
  git push --tags

or just commit changes and push it to main branch to build and upload package as github artifacts:
.. code::

  git add deb-source/libcamera-0.0.3
  git commit -m "release notes" 
  git push origin main


Installation and basic testing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Install the following `libcamera` dependencies:

.. code::

  sudo apt install -y libboost-dev
  sudo apt install -y libgnutls28-dev openssl libtiff-dev pybind11-dev
  sudo apt install -y qtbase5-dev libqt5core5a libqt5widgets
  sudo apt install -y python3-yaml python3-ply
  sudo apt install -y libglib2.0-dev libgstreamer-plugins-base1.0-dev, liblttng-ust1



If you have already installed any other libcamera package, remove it from your system to preven any dependenciens and version conflicts

.. code:: 

   sudo apt remove libcamera-*

Dowload and unpack libcamera archive from release or last workflow artifacts then install all packages with dpkg:

.. code:: 

   sudo dpkg -i *.deb


The ``cam`` utility can be used for basic testing. You can list the cameras
detected on the system with ``cam -l``, and capture ten frames from the first
camera and save them to disk with ``cam -c 1 --capture=10 --file``. See
``cam -h`` for more information about the ``cam`` tool.

In case of problems, a detailed debug log can be obtained from libcamera by
setting the ``LIBCAMERA_LOG_LEVELS`` environment variable:

.. code::

    :~$ LIBCAMERA_LOG_LEVELS=*:DEBUG cam -l
