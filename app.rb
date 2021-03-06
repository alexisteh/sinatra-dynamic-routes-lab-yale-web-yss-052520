require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name_back = @name.split("").reverse.join
    "#{@name_back}"
  end 

  get '/square/:number' do 
    @num = params[:number].to_i 
    @square = @num*@num 
    "#{@square}" 
  end 

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase] 
    @output = [] 
    @num.times do 
      @output << @phrase 
    end 
    "#{@output.join(", ")}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1] + " "
    @word2 = params[:word2] + " "
    @word3 = params[:word3] + " "
    @word4 = params[:word4] + " "
    @word5 = params[:word5] + "."
    @word1 +  @word2 + @word3 + @word4 + @word5
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i 
    if @operation == 'add'
      "#{@num1 + @num2}"
    elsif @operation == 'subtract'
      "#{@num1 - @num2}"
    elsif @operation == 'multiply' 
      "#{@num1 * @num2}"
    else   "#{@num1 / @num2}"
    end 
  end

end