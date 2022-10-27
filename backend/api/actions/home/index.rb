module Backend::Actions::Home
  class Index < Backend::Action
    def handle(*, res)
      res.body = "Welcome to AppPrototype"
    end
  end
end
