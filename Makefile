.PHONY: build-sundials install-conda install-sundials

build-sundials:
	conda config --add channels cyclus
	conda build --yes sundials

install-conda:
	wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh;
	bash ./miniconda.sh -b -p $$HOME/miniconda
	conda install --yes conda-build
	conda upgrade --yes conda conda-build

install-sundials:
	conda install --use-local sundials
