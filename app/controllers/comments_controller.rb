class CommentsController < ApplicationController

    get "/comments" do
        comments = Comment.all
        comments.to_json
    end

    get "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.to_json
    end

    post "/words/:id/comments" do
    new_comment = Comment.create(
        comment: params[:comment],
        user: params[:user],
        word_id: params[:id]
    )
    new_comment.to_json
    end

    delete '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
    end

end
