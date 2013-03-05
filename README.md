dsnns
=====

nameservice for onli's DSN Blogsudo apt-get install apache2 curl git libmysqlclient-dev mysql-server nodejs

usage
=====

Retrieve address by using identity: 
http://www.doma.in/iacs/getAddress.json?identity=user@ema.il
returns null if not found

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

scaffolding memories

- rails new dsnns
- rails generate scaffold Iac identity_type:string identity:string address:string status:string
- rake db:migrate 
- Then add action to controller app/controllers/iacs_controller.rb:
rails generate controller iacs getAddress
... look at the diffs and say no.
[code]
  # GET /iacs/getAddress
  # GET /iacs/getAddress.json
  def getAddress
    @iac = Iac.find_by_identity(params[:identity])

    respond_to do |format|
#      format.html # getUrl.html.erb
      format.json { render json: @iac }
    end
  end
[/code]
Comment: Most time was spent trying to figure out how to do this with the least amount of work. 
So, the finished version is basically copy the show-action, call it getUrl an use the 
.find_by_identity method. 

rake test

rails server


Misc
=====

git reset --hard b165287795a90af090ac486f9657b60ec8715919
git push -f
what is sccs
