class ApplicationRecord < ActiveRecord::Base
  include OpendoorsTempSite

  establish_connection Application::ARCHIVE_DB_CONF
  self.abstract_class = true
end
