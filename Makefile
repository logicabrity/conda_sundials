.PHONY: build-sundials install-sundials

build-sundials:
	conda build sundials -c cyclus

install-sundials:
	conda install --use-local sundials -c cyclus
