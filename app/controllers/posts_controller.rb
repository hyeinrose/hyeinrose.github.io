class PostsController < ApplicationController
    
    #create part 
    def new
    #그냥 화면 구성 
    end
    
    def create
    #입력 데이터 실제 디비에 저장
    
        @post=Post.new #post는 모델이름 ! 
        @post.title=params[:input_title] #안에 내용 받아와 
        @post.content=params[:input_content]
        @post.save
            redirect_to "/posts/show/#{@post.id}" #show post on display 
        #다시돌아가 
    end
    
   
    
    
    
    #read part
    def index
        @posts=Post.all  #get all post
        @users =User.all
    end
    
    def show
        #한개의 post를 보여주는 view
        @post=Post.find(params[:post_id]) #id에 해당하는 post를 가져와라 
        #find는 id로만 검색가능 
        @comments=Comment.where(post_id: params[:post_id]) #where 조건문 걸어서 params에서 받아온 
        #post_id가 post_id랑 같은지 확인하기 
        #params[:post_id]는 routes에서 get/// post_id에서 받아온것이고 params안에는 무조건 같은 변수가 와야함
    end

    #update
    def edit 
        
        @post=Post.find(params[:post_id])
    end
    
    def newstory #저장된 스토리 다가져와 
        @story=Story.all 
    end
    
    
    def update
        #입력된 값 가져와서 save다시해라 ! 
        @post=Post.find(params[:post_id])
        @post.title=params[:input_title]
        @post.content=params[:input_content]
        @post.save
        #그 post다시 show해라 
        redirect_to "/posts/show/#{@post.id}"
    end
    
    
    #delete
    def destory
        #route에서 받아온 post_id
        @post =Post.find(params[:post_id])
        @post.destroy
        #home 화면으로 보내준다 
        redirect_to '/'
    end


end
