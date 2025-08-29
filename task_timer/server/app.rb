# frozen_string_literal: true
require "sinatra"

set :public_folder, File.expand_path("../public", __dir__)
set :bind, "0.0.0.0"  # ajuda em Docker/WSL; local também funciona
set :port, 4567

get "/" do
  send_file File.join(settings.public_folder, "index.html")
end