require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @string = ""
    @number.times do 
      @string = @string + @phrase
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [
      params[:word1], 
      params[:word2], 
      params[:word3], 
      params[:word4], 
      params[:word5]
    ]
    @string = ""

    @words.each do |word|
      word != @words.last ? @string = @string + word + " " : @string = @string + word + "."
    end

    @string
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      result = @number1 + @number2
    elsif @operation == "subtract"
      result = @number1 - @number2
    elsif @operation == "multiply"
      result = @number1 * @number2
    elsif @operation == "divide"
      result = @number1 / @number2
    end
    result.to_s
  end
end