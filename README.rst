.. include:: _resources.rst

.. _hiveeyes-readme:

######
README
######

.. tip::

    You might want to `continue reading on our documentation space <https://hiveeyes.org/docs/system/>`_,
    the rendering will work properly there.


Change documentation
====================
::

    git clone git@github.com:hiveeyes/documentation.git
    cd documentation
    <editor> *.rst

Build local docs
----------------
::

    <package-manager> install python2-virtualenv
    make docs-html
    <browser> doc/build/html/index.html

Build global docs
-----------------
::

    git commit && git push


Write reStructuredText
======================

How to link to BERadio_ and Kotori_ project documentation?::

    :ref:`beradio-spec`
    :ref:`beradio:beradio-spec`
    :ref:`beradio spec <beradio:beradio-spec>`

