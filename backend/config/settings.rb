# frozen_string_literal: true

module Backend
  class Settings < Hanami::Settings
    # Define your app settings here, for example:
    #
    # setting :my_flag, default: false, constructor: Types::Params::Bool
    setting :database_url, constructor: Types::String
    setting :database_user, constructor: Types::String
    setting :database_password, constructor: Types::String
  end
end
