require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
  result = ""
  params[:number].to_i.times do |i|
    result += params[:phrase]
  end
    result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i

    result = ""

      case params[:operation]
      when "add"
        result = (number_1 + number_2).to_s
      when "subtract"
        result = (number_1 - number_2).to_s
      when "multiply"
        result = (number_1 * number_2).to_s
      when "divide"
        result = (number_1 / number_2).to_s
    end
  end
end
