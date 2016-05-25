SHELL = bash

# ==========================================
#                 environment
# ==========================================
#
# Miscellaneous tools:
# Software tests, Documentation builder, Virtual environment builder
#
docs-html: virtualenv
	touch doc/source/index.rst
	export SPHINXBUILD="`pwd`/.venv/bin/sphinx-build"; cd doc; make html

virtualenv:
	@test -e .venv/bin/python || `command -v virtualenv` --python=`command -v python` .venv
	@.venv/bin/pip --quiet install --requirement requirements.txt


# ==========================================
#          html to image rasterizer
# ==========================================

# Rasterize some public Grafana dashboard snapshots
rasterize-all: rasterize-dashboard-1 rasterize-dashboard-2

rasterize-dashboard-1:
	$(MAKE) rasterize \
		dashboard_url=https://swarm.hiveeyes.org/grafana/dashboard/snapshot/Z9QBKYitgiOq53lrySWkbOSyWUk9rc92 \
		output_image=./doc/source/_static/img/grafana-ber-prototype-1.jpeg

rasterize-dashboard-2:
	$(MAKE) rasterize \
		dashboard_url=https://swarm.hiveeyes.org/grafana/dashboard/snapshot/b87pjWd80DfENQXBa4JzTT5mSUt83Tsd \
		output_image=./doc/source/_static/img/grafana-ber-prototype-2.jpeg


phantom_js     := /opt/local/bin/phantomjs
#rasterize_js  := /opt/local/share/doc/phantomjs/examples/rasterize.js
rasterize_js   := ./bin/rasterize.js
#paper_format   := A4
paper_format   := 1024px
#zoom_factor    := 0.5

rasterize:
	$(phantom_js) --ignore-ssl-errors=true '$(rasterize_js)' '$(dashboard_url)' '$(output_image)' $(paper_format)
	@# --debug=true
	@# $(zoom_factor)


# ==========================================
#                 releasing
# ==========================================
#
# Release targets for convenient release cutting.
#
# Synopsis::
#
#    make release bump={patch,minor,major}
#
# Setup:
#
#    - Make sure you have e.g. ``bumpversion==0.5.3`` in your ``requirements.txt``
#    - Add a ``.bumpversion.cfg`` to your project root properly reflecting
#      the current version and the list of files to bump versions in. Example::
#
#        [bumpversion]
#        current_version = 0.1.0
#        files = doc/source/conf.py
#        commit = True
#        tag = True
#        tag_name = {new_version}
#

bumpversion:
	.venv/bin/bumpversion $(bump)

push:
	git push && git push --tags

release: virtualenv bumpversion push


# ==========================================
#            ptrace.hiveeyes.org
# ==========================================

# Don't commit media assets (screenshots, etc.) to the repository.
# Instead, upload them to https://ptrace.hiveeyes.org/
ptrace_target := root@ptrace.hiveeyes.org:/var/www/ptrace.hiveeyes.org/htdocs/
ptrace_http   := https://ptrace.hiveeyes.org/
ptrace: check-ptrace-options
	$(eval prefix         := $(shell date --iso-8601))
	$(eval name           := $(shell basename '$(source)'))
	$(eval file_name      := $(prefix)_$(name))
	$(eval file_escaped   := $(shell printf %q "$(file_name)"))
	$(eval file_url       := $(shell echo -n "$(file_name)" | python -c "import sys, urllib; print urllib.quote(sys.stdin.read())"))

	$(eval upload_command := scp '$(source)' '$(ptrace_target)$(file_escaped)')
	$(eval media_url      := $(ptrace_http)$(file_url))

	@# debugging
	@#echo "name:         $(name)"
	@#echo "file_name:    $(file_name)"
	@#echo "file_escaped: $(file_escaped)"
	@#echo "command:      $(upload_command)"

	$(upload_command)

	@echo "Access URL: $(media_url)"

check-ptrace-options:
	@if test "$(source)" = ""; then \
		echo "ERROR: 'source' not set"; \
		exit 1; \
	fi

