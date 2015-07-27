## Tools und deren Optionen


# ---

successrun:
	mvn clean package exec:java -Dexec.args="-a \"Pflichtfeld\" -t = 55 --size SIZE -name \"THOMAS WENZLAFF\" -g2"

failrun:
	mvn clean package exec:java -Dexec.args="-a \"Pflichtfeld\" -t = 55 --size SIZE -name \"THOMAS WENZLAFF\" -g2 -g1"

.PHONY: release dist readme test lint coverage clean

release: readme
	mvn clean test package
#	git diff --exit-code # ensure there are no uncommitted changes
	# für Java/Maven Central Repository?: ## git tag -a \
#			-m v`python -c 'import markdown_checklists; print(markdown_checklists.__version__)'` \
#			v`python -c 'import markdown_checklists; print(markdown_checklists.__version__)'`
#	git push origin master --tags
	# XXX: duplicates dist target
	# für Java?: ## rm -r dist || true
	# für Java/Maven Central Repository?: ## $(PYTHON) setup.py sdist upload

readme:

test:
	mvn clean test

lint:

coverage:

