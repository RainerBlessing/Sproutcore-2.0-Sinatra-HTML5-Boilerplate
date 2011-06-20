require 'sinatra'
set :root, File.dirname(__FILE__)
class MySinatraApp < Sinatra::Base
  get '/' do
    File.read(File.join('public', 'index.html'))
  end
  get "/stylesheets/:name.css" do
    content_type 'text/css'
    File.read(File.join('public/stylesheets', "#{params[:name]}.css"))
  end
  get '/js/:name.js' do
    File.read(File.join('public', "js/#{params[:name]}.js"))
  end
  get '/js/libs/:name.js' do
    File.read(File.join('public', "js/libs/#{params[:name]}.js"))
  end
  get '/js/mylibs/:name.js' do
    File.read(File.join('public', "js/mylibs/#{params[:name]}.js"))
  end
end
