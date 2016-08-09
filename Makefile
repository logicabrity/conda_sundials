.PHONY: build-sundials install-sundials

build-sundials:
	conda config --add channels cyclus
	conda build sundials

install-sundials:
	conda install --use-local sundials -c cyclus
