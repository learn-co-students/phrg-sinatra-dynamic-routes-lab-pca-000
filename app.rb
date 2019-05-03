require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 get "/reversename/:name" do
    @name = params[:name].reverse
  end
  get "/square/:number" do
    @number = (params[:number].to_i ** 2).to_s
  end
  get "/say/:number/:phrase" do
    x = params[:number].to_i
    answer = ''
    x.times do
      answer += params[:phrase]
      end
      answer
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      answer = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      answer = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      answer = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      answer = (params[:number1].to_i / params[:number2].to_i).to_s
    else
      "Unable to perform this operation"
    end
  end
end
