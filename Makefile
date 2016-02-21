# ==========================================
#               project tools
# ==========================================
rasterize-dashboard-1:
	$(MAKE) rasterize \
		dashboard_url=https://swarm.hiveeyes.org/grafana/dashboard/snapshot/Z9QBKYitgiOq53lrySWkbOSyWUk9rc92 \
		output_image=./doc/source/_static/img/grafana-ber-prototype-1.jpeg

rasterize-dashboard-2:
	$(MAKE) rasterize \
		dashboard_url=https://swarm.hiveeyes.org/grafana/dashboard/snapshot/b87pjWd80DfENQXBa4JzTT5mSUt83Tsd \
		output_image=./doc/source/_static/img/grafana-ber-prototype-2.jpeg

rasterize-all: rasterize-dashboard-1 rasterize-dashboard-2


ptrace_target := root@ptrace.hiveeyes.org:/var/www/ptrace.hiveeyes.org/htdocs/
ptrace_http   := http://ptrace.hiveeyes.org/
upload-ptrace:
	$(eval prefix := $(shell date --iso-8601))
	$(eval name   := $(shell basename $(source)))
	$(eval id     := $(prefix)_$(name))

	@# debugging
	@#echo "name: $(name)"
	@#echo "id:   $(id)"

	@scp '$(source)' '$(ptrace_target)$(id)'

	$(eval url    := $(ptrace_http)$(id))
	@echo "Access URL: $(url)"


# ==========================================
#                 environment
# ==========================================
#
# Miscellaneous tools:
# Software tests, Documentation builder, Virtual environment builder
#
docs-html: virtualenv
	export SPHINXBUILD="`pwd`/.venv/bin/sphinx-build"; cd doc; make html

virtualenv:
	@test -e .venv/bin/python || `command -v virtualenv` --python=`command -v python` .venv
	@.venv/bin/pip --quiet install --requirement requirements.txt


# ==========================================
#          html to image rasterizer
# ==========================================

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

