namespace :archives do
  namespace :db do
    desc 'Create the Archive config database'
    task create: :environment do
      db_conf = YAML.load(ERB.new(File.read("config/database.yml")).result)
      config = db_conf["config_db"][Rails.env]

      # Database is null because it hasn't been created yet.
      ActiveRecord::Base.establish_connection(config.merge('database' => nil))
      ActiveRecord::Base.connection.create_database(config['database'], config)
    end
  end
end
