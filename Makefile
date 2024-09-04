local:
	mkdir -p tmp
	npx antora --version
	npx antora --stacktrace --log-format=pretty \
		antora-playbook.yml \
		2>&1 | tee tmp/local-build.log 2>&1

clean:
	rm -rf build

environment:
	npm install && npm update

