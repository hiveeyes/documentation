######
README
######

Change documentation
===================
::

    git clone git@git.elmyra.de:hiveeyes/swarm-hiveeyes-org.git
    cd swarm-hiveeyes-org
    <editor> *.rst

Build local docs
----------------
::
     
    <package-manager> install python2-virtualenv
    make docs-html  
    <browser> doc/build/html/index.html # navigate to this path and click index.html

Build global docs
-----------------
::

    git commit && git push # for global access
