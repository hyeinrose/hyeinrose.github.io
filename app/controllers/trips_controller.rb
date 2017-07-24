class TripsController < ApplicationController
    
    
    
    def index
        @trip=Trip.new
        @trips=Trip.all  #get all post
    end
    

     def new
         @trip=Trip.new
         #@trip.writer
    #그냥 화면 구성 
    end
    
     def create
      @trip = Trip.new(trip_params)
     
          @trip.writer=current_user.email #current user ID
          if @trip.save
             redirect_to trips_path, notice: "The trip #{@trip.title} has been uploaded."
          else
             render "new"
          end
      
    end
    def show
        #한개의 post를 보여주는 view
        @trip=Trip.find(params[:trip_id]) #id에 해당하는 post를 가져와라 
        #find는 id로만 검색가능 
        @comments=Comment.where(trip_id: params[:trip_id]) #where 조건문 걸어서 params에서 받아온 
        #post_id가 post_id랑 같은지 확인하기 
        #params[:post_id]는 routes에서 get/// post_id에서 받아온것이고 params안에는 무조건 같은 변수가 와야함
    end
   
    def destroy
        @trip = Trip.find(params[:trip_id])
        @trip.destroy
        redirect_to '/trips/index'
    end
 
   
   
 
    def trip_params
      params.require(:trip).permit(:content, :title, :attachment)
    end
    
end
