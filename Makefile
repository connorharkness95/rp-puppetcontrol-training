# Make file to setup terraform

.ONESHELL:
.SILENT: ;  # no need for @

# init is a target to call the necessary targets to get a working env.
init:
	echo "installing yaml-lint ..."
	gem install yaml-lint
	echo "installing r10k ... "
	gem install r10k
	echo "installing rspec-puppet ..."
	gem install rspec-puppet
	echo "installing yaml-lint ..."
	echo "installing json-lint ..."
	gem install metadata-json-lint
	echo "installing puppet ..."
	gem install puppet 
	echo "installing puppet-lint ..."
	gem install puppet-lint
	echo "Setting pre-commit hook..."
	(cp -r ./commit_hooks .git/hooks/)
	(cd .git/hooks && ln -sf ../../misc/pre-commit pre-commit)
	echo "Done..."
