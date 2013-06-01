require 'rack'

module Pegas

  class Runner

    def self.start(app_path)
      raw = File.read(app_path)
      raw.sub!(/^__END__\n.*/, '')
      inner_app = eval("Rack::Builder.new {(\n#{raw}\n)}.to_app", TOPLEVEL_BINDING, app_path)
      server = HttpServer.new(inner_app)
    end
  end
end
