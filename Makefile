.PHONY: default rsync

default:
	npm install
	gulp

deploy:
	rsync -vrc * .htaccess mli-field@fielddaylab.wisc.edu:/httpdocs/courses --exclude-from rsync-exclude
