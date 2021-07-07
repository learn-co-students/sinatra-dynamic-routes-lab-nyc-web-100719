require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    (@number**2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase = @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]]
    @words.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    @nums = [params[:number1].to_i, params[:number2].to_i]
    @operation = params[:operation]
    if @operation == 'add'
      result = @nums.sum
    elsif @operation == 'subtract'
      result = @nums[0] - @nums[1]
    elsif @operation == 'multiply'
      result = @nums[0] * @nums[1]
    elsif @operation == 'divide'
      result = @nums[0] / @nums[1]
    end
    result.to_s
  end

end