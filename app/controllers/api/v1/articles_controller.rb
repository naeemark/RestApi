module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        @articles = Article.order('created_at DESC')
        render json: {
            status: 'SUCCESS',
            message: 'All Articles List',
            data: @articles
        }, status: :ok
      end
    end
  end
end