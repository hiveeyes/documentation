docs-html: virtualenv
	export SPHINXBUILD="`pwd`/.venv/bin/sphinx-build"; cd doc; make html

virtualenv:
	@test -e .venv/bin/python || `command -v virtualenv` --python=`command -v python` .venv
	@.venv/bin/pip --quiet install --requirement requirements.txt
