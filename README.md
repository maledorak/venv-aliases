Virtualenv aliases
==================
Aliases for [virtualenvwrapper](http://virtualenvwrapper.readthedocs.io)
All aliases are loaded from main virtualenvwrapper postactivate.sh script.

Installation
-------
1. Requirements
	* python-virtualenv
	* virtualenvwrapper
1. When the virtualenwrapper is already installed you should has exported `WORKON_HOME` env variable.
	* Check variable `echo $WORKON_HOME`
1. Init and fetch this repo to the `$WORKON_HOME` dir. (You can't clone them)
	```
	cd $WORKON_HOME
	git remote add origin git@github.com:maledorak/venv-aliases.git
	git fetch origin
	git checkout -b master --track origin/master
	```

Usage
-----
1. Add `.env.default` file with envs to your project (you should commit it). This envs will be used in aliases.
	```
	DJANGO_SETTINGS_MODULE=path.to.settings
	```
2. Add `.env` file with envs to your project (you should add it to .gitignore).
	```
	DJANGO_SETTINGS_MODULE=path.to.local_settings
	```
3. `.env` override `.env.default` variables.

