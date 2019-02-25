module Authors
    class PostsController < AuthorController
        before_action :set_post, only: [:show, :edit, :update, :destroy, :publish, :unpublish]
      
        # GET /posts
        # GET /posts.json
        def index
          @posts = current_author.posts.most_recent
        end
      
        # GET /posts/1
        # GET /posts/1.json
        def show
        end
      
        # GET /posts/new
        def new
          @post = current_author.posts.new
        end
      
        # GET /posts/1/edit
        def edit
        end
        # added per video # 7
        def publish
          @post.publish
          redirect_to authors_post_url
        end

        def unpublish
          @post.unpublish
          redirect_to authors_post_url
        end

        # POST /posts
        # POST /posts.json
        def create
          @post = current_author.posts.new(post_params)
      
          respond_to do |format|
            if @post.save
              format.html { redirect_to authors_post_path(@post), notice: 'Post was successfully created.' }
              format.json { render :show, status: :created, location: @post }
            else
              format.html { render :new }
              format.json { render json: @post.errors, status: :unprocessable_entity }
            end
          end
        end
      
        # PATCH/PUT /posts/1
        # PATCH/PUT /posts/1.json
        def update
          respond_to do |format|
            if @post.update(post_params)
              format.html { redirect_to authors_post_path(@post), notice: 'Post was successfully updated.' }
              format.json { render :show, status: :ok, location: @post }
            else
              format.html { render :edit }
              format.json { render json: @post.errors, status: :unprocessable_entity }
            end
          end
        end
      
        # DELETE /posts/1
        # DELETE /posts/1.json
        def destroy
          @post.destroy
          respond_to do |format|
            format.html { redirect_to authors_posts_url, notice: 'Post was successfully destroyed.' }
            format.json { head :no_content }
          end
        end
      
        private
          # Use callbacks to share common setup or constraints between actions.
          # chnged from @post = Post.find(params[:id]) on 10 15 18 by Sam Chacko per video https://www.youtube.com/watch?v=VpNBCpAgEsY&t=0s&index=2&list=PLv5qDW4EFExusV-kdCJAGbHN6fnYMjq6x # 8:21
        
        def set_post
          @post = current_author.posts.friendly.find(params[:id])
        end
      
          # Never trust parameters from the scary internet, only allow the white list through.
          def post_params
            
          # chnged from params.require(:post).permit(:title, :body, :description, :slug) on 10 15 18 by Sam Chacko per video https://www.youtube.com/watch?v=VpNBCpAgEsY&t=0s&index=2&list=PLv5qDW4EFExusV-kdCJAGbHN6fnYMjq6x # 8:21
        
            params.require(:post).permit(:title, :body, :description, :banner_image_url, :tag_list)
          end
      end
      
end
# Blog: :PostsController