class ArchiveConfig < ConfigRecord
  def self.site_config
    @@site_config ||= self.find_by_key(APP_CONFIG[:sitekey])
  end
end
