Hanami.app.register_provider :persistence, namespace: true do
  prepare do
    require "rom"
    config = ROM::Configuration.new(
      :sql, target["settings"].database_url,
      username: target["settings"].database_user,
      password: target["settings"].database_password,
      encoding: "UTF8"
    )

    register "config", config
    register "db", config.gateways[:default].connection
  end

  start do
    config = target["persistence.config"]

    config.auto_registration(
      target.root.join("lib/hanami2demo/persistence"),
      namespace: "Hanami2Demo::Persistence"
    )

    register "rom", ROM.container(config)
  end
end
