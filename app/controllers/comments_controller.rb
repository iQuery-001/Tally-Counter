class CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :edit, :update]

    def index
        @comments = Comment.all
        if @comments
        render json: CommentSerializer.new(@comments).serialized_json
        else
        render json: {
            status: 500,
            errors: ['no comments found']
        }
        end
    end

    def create
        @comment = comment.new(comment_params)

        if @comment.save
            console.log('success')
        else
            console.log('failure')
        end
    end
    


private

    def find_comment
        @comment = comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:user_id, :content, :tally_id)
    end

end
