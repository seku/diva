require 'sinatra/partial'
require 'sinatra/base'
require 'haml'

class App < Sinatra::Base
  register Sinatra::Partial

  set :views, "app/views"
  set :haml, { :format => :html5 }

  enable :partial_underscores

  helpers do
    # container for helpers
    # that can be used inside views
  end

  get '/' do
    haml :index
  end

end
