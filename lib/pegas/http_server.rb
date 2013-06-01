require "http/parser"
require 'kgio'

module Pegas
  class HttpServer
    def initialize(app)
      @app = app
      @sock = Kgio::TCPServer.new('127.0.0.1', 8080)
    end

    def start
      while @sock
        if client = @sock.kgio_tryaccept
          process_client(client)
        end
      end
    end

    def process_client(client)
     parser = Http::Parser.new
     @env = {}
     parser.on_headers_complete = proc do
      @env[:status] = parser.status_code
      @env[:headers] = parser.headers
     end
     parser.on_body = proc do |chunk|
        @env[:body] = chunk
     end
     parser.on_message_complete = proc do |env|
       p @env
       p env
     end
     loop do
       begin
         parser << client.kgio_read!(1024)
       rescue EOFError
         break
       end
     end
    end
  end
end
