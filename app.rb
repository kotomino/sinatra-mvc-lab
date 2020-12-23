# require_relative 'config/environment'
# require_relative 'models/piglatinizer.rb'

# class App < Sinatra::Base

#     get '/' do
#         erb :user_input
#     end

#     post '/' do
#         @piglatin_text = PigLatinizer.new(params[:text]).piglatinize

#         erb :output
#     end

# end


require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :output
  end

end