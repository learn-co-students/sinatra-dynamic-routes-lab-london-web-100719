require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @rev_name = params[:name].reverse
    "#{@rev_name}"
  end

  get '/square/:number' do 
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @repeated_phrase = ''

    params[:number].to_i.times do
      @repeated_phrase += params[:phrase]
    end

    @repeated_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end