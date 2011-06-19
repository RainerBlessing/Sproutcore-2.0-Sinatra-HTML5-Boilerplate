require 'rubygems'
require 'bundler'

Bundler.require
require 'sass/plugin/rack'
use Sass::Plugin::Rack
Sass::Plugin.options = Compass.sass_engine_options

require './my_sinatra_app'
run MySinatraApp
