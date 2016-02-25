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


Deploy splash screen
====================
To deploy the splash screen ``src/htdocs/index.html``::

    ssh root@elbanco.hiveeyes.org
    cd /opt/swarm-hiveeyes-org/
    git pull


Write reStructuredText
======================

How to link to BERadio_ and Kotori_ project documentation?::

  :ref:`beradio-spec`
  :ref:`beradio:beradio-spec`
  :ref:`beradio spec <beradio:beradio-spec>`
