class ChecklistController < ApplicationController

  before_filter :authenticate_user!

  def index
    #@bichos = Bug.all
    @bichos = Bug.order("resolved")
  end

  def check
    Bug.update_all("resolved = 'f', accepted = 'f'")
    
    #debugger
    @bugs = Bug.all
 
    #@_params[:cb_]["13"]
    @bugs.each do |bug|

      params[:cb_].each do |parametro|
          if bug.id == parametro[0].to_i
            bug.accepted = true
            bug.save
          end #fin if
      end #fin paramw
      
      params[:cb2_].each do |parametro|
          if bug.id == parametro[0].to_i
            bug.resolved = true
            bug.save
          end #fin if
      end #fin paramw

     end #fin bugs.each


    @unvalor = params[:cb_]
    #@bug = @list.tasks.find(params[:id])
    #@bug.accepted = true
    #@bug.save


    #Bug.find(params[:cb_]).update_attributes(:accepted => true) 
    #Bug.all.each do |x|
    #  if x.id == 
    #end

#@bicho = Bug.find(params[:id])
    #@bicho.update_attributes(params[:album])

    #x = params[:cb_]
    #x.each do |y|

    redirect_to (:action => 'index') 
  end

end
