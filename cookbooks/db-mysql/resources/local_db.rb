actions :create

default_action(:create)

attribute :bind_addr, :kind_of => String, :default => '127.0.0.1'
attribute :port, :kind_of => Fixnum, :default => 3306
attribute :version, :kind_of => String, :default => '5.5'
attribute :root_pwd, :kind_of => String, :default => nil
