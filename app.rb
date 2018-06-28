require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    @phrase = []
    (params[:number].to_i).times do
      @phrase << params[:phrase]
    end
    @phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @phrase = params.values.join(" ")
    @phrase + "."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]

    case @op
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end
  end
end
