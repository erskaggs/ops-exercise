apt_package 'unzip' do
    action :install
end

include_recipe 'ghostblog::ghost'
include_recipe 'ghostblog::services'
