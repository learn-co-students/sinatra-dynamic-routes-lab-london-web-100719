require_relative 'config/environment'

class App < Sinatra::Base
  
  #   GET /reversename/:name
  #   sends a 200 status code (FAILED - 1)
  #   renders the name backwards (FAILED - 2)
  #   isn't hard-coded (FAILED - 3)

  get '/reversename/:name' do
    params[:name].reverse
  end

  # GET /square/:number
  #   sends a 200 status code (FAILED - 4)
  #   renders the square of the number (FAILED - 5)
  #   isn't hard-coded (FAILED - 6)

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  # GET /say/:number/:phrase
  #   sends a 200 status code (FAILED - 7)
  #   repeats the phrase n times (FAILED - 8)
  #   isn't hard-coded (FAILED - 9)

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase]
    output = ""
    n.times do
       output += phrase
    end
    output
  end

  # GET /say/:word1/:word2/:word3/:word4/:word5
  #   sends a 200 status code (FAILED - 10)
  #   concatenates the words and adds a period (FAILED - 11)
  #   isn't hard-coded (FAILED - 12)

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.map { |k, v| v}.join(" ") + "."
  end

  # GET /:operation/:number1/:number2
  #   adds two numbers together (FAILED - 13)
  #   subtracts the second number from the first (FAILED - 14)
  #   multiplies two numbers together (FAILED - 15)
  #   divides the first number by the second number (FAILED - 16)

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    return "#{num1 + num2}" if params[:operation] == "add"
    return "#{num1 - num2}" if params[:operation] == "subtract"
    return "#{num1 * num2}" if params[:operation] == "multiply"
    return "#{num1 / num2}" if params[:operation] == "divide"
  end

end