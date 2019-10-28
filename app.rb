require_relative 'config/environment'

class App < Sinatra::Base
  
  # routing--

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @num = params[:number]
    @squared = @num.to_i*@num.to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    @amount =@num.to_i
    @result = ''
    
    @amount.times do
      @result += @phrase
    end
    @result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params[:word1] + ' ' +params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] +  "."
    @words
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    @result = nil

   if @operator == 'add'
        @result= @num1.to_i +  @num2.to_i 
   elsif @operator == 'subtract'
        @result= @num2.to_i -  @num1.to_i 
   elsif @operator == 'divide'
        @result= @num1.to_i /  @num2.to_i 
   elsif @operator == 'multiply'
        @result= @num1.to_i *  @num2.to_i 
   else    
    @result = "Unable to perform this operation"
   end 
    @result.to_s
  end

  # routing--

end