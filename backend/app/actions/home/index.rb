# frozen_string_literal: true

module Backend
  module Actions
    module Home
      class Index < Backend::Action
        def handle(*, res)
          res.body = "Hello from Hanami"
        end
      end
    end
  end
end
