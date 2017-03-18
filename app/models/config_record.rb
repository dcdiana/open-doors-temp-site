class ConfigRecord < ActiveRecord::Base
  include OpendoorsTempSite

  establish_connection Application::CONFIG_DB_CONF
  self.abstract_class = true
end
