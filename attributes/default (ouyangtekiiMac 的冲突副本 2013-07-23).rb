default["railsbox"]["db_root_password"] = nil

# A list of database_user's attribute parameters.
# See database cookbook for details.

default["railsbox"]["databases"]["postgresql"] = []


default["railsbox"]["ruby"]["versions"] = %w(2.0.0-p247)
default["railsbox"]["ruby"]["global_version"] = "2.0.0-p247"
default["railsbox"]["upstream_start_port"]["unicorn"] = 10001
# default["railsbox"]["upstream_start_port"]["passenger"] = 20001

default["railsbox"]["default_config"]["nginx"]["version"] = "1.4.2"
default["railsbox"]["default_config"]["nginx"]["template_name"] = "nginx_vhost.conf.erb"
default["railsbox"]["default_config"]["nginx"]["template_cookbook"] = "railsbox"
default["railsbox"]["default_config"]["nginx"]["listen_port"] = "80"

default["railsbox"]["default_config"]["unicorn"]["listen_port_options"] = { :tcp_nodelay => true, :backlog => 100 }
default["railsbox"]["default_config"]["unicorn"]["worker_timeout"] = 60
default["railsbox"]["default_config"]["unicorn"]["preload_app"] = false
default["railsbox"]["default_config"]["unicorn"]["worker_processes"] = [node[:cpu][:total].to_i * 4, 8].min
default["railsbox"]["default_config"]["unicorn"]["before_fork"] = 'sleep 1'

default["railsbox"]["default_config"]["unicorn_runit"]["template_name"] = "unicorn"
default["railsbox"]["default_config"]["unicorn_runit"]["template_cookbook"] = "railsbox"
default["railsbox"]["default_config"]["unicorn_runit"]["rack_env"] = "production"


# defualt["railsbox"]["default_config"]['postgresql']['version'] = "9.2"
# default["railsbox"]["default_config"]["postgresql"]["template_name"] = "postgresql"


# default["railsbox"]["default_config"]["passenger_runit"]["template_name"] = "passenger"
# default["railsbox"]["default_config"]["passenger_runit"]["template_cookbook"] = "railsbox"
# default["railsbox"]["default_config"]["passenger_runit"]["rack_env"] = "production"
# default["railsbox"]["default_config"]["passenger_runit"]["max_pool_size"] = 6
# default["railsbox"]["default_config"]["passenger_runit"]["min_instances"] = 1
# default["railsbox"]["default_config"]["passenger_runit"]["spawn_method"] = "smart-lv2"
# default["railsbox"]["default_config"]["passenger_runit"]["host"] = "localhost"

default["railsbox"]["apps"]["unicorn"] = []
# default["railsbox"]["apps"]["passenger"] = []

set['nginx']['init_style'] = "init"

