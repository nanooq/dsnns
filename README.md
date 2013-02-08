dsnns
=====

nameservice for onli's DSN Blogsudo apt-get install apache2 curl git libmysqlclient-dev mysql-server nodejs


setup
=====

See: http://www.andrehonsberg.com/article/install-rvm-ubuntu-1204-linux-for-ruby-193 
rvm notes #check for warnings!
rvm install 1.9.2
rvm --default 1.9.2 # was rvm use 1.9.2
gem install rails --version 3.1.0

gitup
=====

git clone git@github.com:nanooq/dsnns
cd dsnns

dsnup
=====

rake db:seed

// scaffolding memories
// rails new dsnns
// rails generate scaffold Iac identity_type:string identity:string address:string status:string
// rake db:migrate 

rake test

rails server


Misc
=====

git reset --hard b165287795a90af090ac486f9657b60ec8715919
git push -f
what is sccs
