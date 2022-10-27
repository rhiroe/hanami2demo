# frozen_string_literal: true

module Backend
  class Routes < Hanami::Routes
    root to: "home.index"
  end
end
