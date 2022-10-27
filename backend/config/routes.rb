# frozen_string_literal: true

module Backend
  class Routes < Hanami::Routes
    slice :api, at: "/api" do
      root to: "home.index"
    end
  end
end
