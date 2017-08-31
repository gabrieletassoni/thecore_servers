Rails.application.configure do
  config.after_initialize do
    require 'abilities_thecore_servers_concern'
  end
end
