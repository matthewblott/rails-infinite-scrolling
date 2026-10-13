class SimplerController < ApplicationController
  
  def index
    @pagy, @posts = pagy(Post.order(created_at: :desc), items: 10)
    
    if turbo_frame_request?
      render partial: "simpler/frame", locals: { view_models: @posts, pagy: @pagy }
    end
  end

end
