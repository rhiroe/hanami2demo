# frozen_string_literal: true

module API
  module Actions
    module Home
      class Index < API::Action
        def handle(*, res)
          res.body = "Hello from Hanami"
        end
      end
    end
  end
end
