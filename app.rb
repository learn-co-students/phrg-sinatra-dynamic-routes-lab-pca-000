require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    user_name = params[:name].reverse
    "Hello #{user_name}!"
  end

  get "/square/:number" do
    number = params[:number].to_i
    squared = number * number
    "#{squared}"
  end


get "/say/:number/:phrase" do
    phrases = []
    params[:number].to_i.times do
    phrases << "#{params[:phrase]}"
  end
  phrases
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} " "#{params[:word2]} " "#{params[:word3]} " "#{params[:word4]} " "#{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

     case operation
      when "add"
      "#{number1 + number2}"
      when "subtract"
       "#{number2 - number1}"
      when "multiply"
       "#{number1 * number2}"
      when "divide"
       "#{number1 / number2}"
     else
    end
  end
end
