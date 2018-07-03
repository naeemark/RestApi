module Api
  class TokenController < ApplicationController

    def index
      @token = 'This is sample token'
      render json: {
          status: 'SUCCESS',
          token: @token,
          tokenBytes: @token.bytes
      }, status: :ok
    end

    def show
      index
    end
  end
end