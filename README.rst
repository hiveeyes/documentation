######
README
######

Change documentation
===================
::
    git clone git@git.elmyra.de:hiveeyes/swarm-hiveeyes-org.git
    cd swarm-hiveeyes-org
    vim *.rst

Build local docs
----------------
::
    make docs-html  
    open doc/build/html/index.html 

Build global docs
-----------------
::
    git commit && git push # for public
