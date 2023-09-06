class Api::V1::MessagesController < ApplicationController
  def random
    random_message = Message.order("RANDOM()").first
    render json: {greeting: random_message&.greeting}
  end
end
