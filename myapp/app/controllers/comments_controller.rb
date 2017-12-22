class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy, :approve]

  # POST /blogs/1/entries/1/comments
  # POST /blogs/1/entries/1/comments.json
  def create
    @blog = Blog.find(params[:blog_id])
    @entry = @blog.entries.find(params[:entry_id])
    @comment = @entry.comments.build(comment_params)
    @comment.status = 'unapproved'

    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@blog, @entry], notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { redirect_to [@blog, @entry] }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1/entries/1/comments/1
  # DELETE /blogs/1/entries/1/comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to [@blog, @entry], notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # APPROVE /blogs/1/entries/1/comments/1/approve
  # APPROVE /blogs/1/entries/1/comments/1.json
  def approve
    @comment.status = 'approved'
    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@blog, @entry], notice: 'Comment was successfully approved.' }
      else
        format.html { redirect_to [@blog, @entry] }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @blog = Blog.find(params[:blog_id])
      @entry = @blog.entries.find(params[:entry_id])
      @comment = @entry.comments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :status)
    end
end
