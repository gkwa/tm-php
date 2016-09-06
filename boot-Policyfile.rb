# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/chef/chef-dk/blob/master/POLICYFILE_README.md

name "tm-php"
default_source :supermarket
run_list "tm-php::hello"
cookbook "ark", ">= 1.2.1", github: "taylormonacelli/ark"
cookbook "tm-php", path: "."
cookbook "vcruntime", ">= 0.2.2", github: "taylormonacelli/vcruntime"
