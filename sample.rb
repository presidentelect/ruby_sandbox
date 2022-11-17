require 'bundler/setup'

require "yaml"
require 'sinatra'

def get_page(file_name)
  File.open(file_name, 'r') do |file|
    file.read
  end
end

setup = YAML.load_file "properties.yaml"
p setup

set :port, 3000

get '/' do
  get_page './pages/home.html'
end

get '/about' do
    get_page './pages/about.html'
end
