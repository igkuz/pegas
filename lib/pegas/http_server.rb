require "http/parser"
module Pegas
  class HttpServer
    def initialize(app)
      @app = app
      p @app.call()
    end
  end
end
