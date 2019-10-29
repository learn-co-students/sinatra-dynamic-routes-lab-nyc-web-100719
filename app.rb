require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end 


  get '/square/:number' do 
    @user_number = params[:number]
    @integers = @user_number.to_i * @user_number.to_i
    @integers_to_strings = @integers.to_s
  end 


  get '/say/:number/:phrase' do 
    @entered_phrase = params[:phrase]
    "#{@entered_phrase}" * params[:number].to_i 
  end 


  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @entered_words = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@entered_words}"
  end 

  get '/:operation/:number1/:number2' do

    case params[:operation]
    when "add"
      result = params[:number1].to_i + params[:number2].to_i
      result.to_s
    when "subtract"
      result = params[:number1].to_i - params[:number2].to_i
      result.to_s
    when "multiply" 
      result = params[:number1].to_i * params[:number2].to_i
      result.to_s
    when "divide"
      result = params[:number1].to_i / params[:number2].to_i
      result.to_s
    end 
  end 


end