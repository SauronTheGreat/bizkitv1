class StudentGroupUsersController < ApplicationController
  # GET /student_group_users
  # GET /student_group_users.json
  def index
    @student_group_users = StudentGroupUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_group_users }
    end
  end

  # GET /student_group_users/1
  # GET /student_group_users/1.json
  def show
    @student_group_user = StudentGroupUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_group_user }
    end
  end

  # GET /student_group_users/new
  # GET /student_group_users/new.json
  def new
    @student_group_user = StudentGroupUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_group_user }
    end
  end

  # GET /student_group_users/1/edit
  def edit
    @student_group_user = StudentGroupUser.find(params[:id])
  end

  # POST /student_group_users
  # POST /student_group_users.json
  def create
    @student_group_user = StudentGroupUser.new(params[:student_group_user])

    respond_to do |format|
      if @student_group_user.save
        format.html { redirect_to @student_group_user, notice: 'Student group user was successfully created.' }
        format.json { render json: @student_group_user, status: :created, location: @student_group_user }
      else
        format.html { render action: "new" }
        format.json { render json: @student_group_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_group_users/1
  # PUT /student_group_users/1.json
  def update
    @student_group_user = StudentGroupUser.find(params[:id])

    respond_to do |format|
      if @student_group_user.update_attributes(params[:student_group_user])
        format.html { redirect_to @student_group_user, notice: 'Student group user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_group_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_group_users/1
  # DELETE /student_group_users/1.json
  def destroy
    @student_group_user = StudentGroupUser.find(params[:id])
    @student_group_user.destroy

    respond_to do |format|
      format.html { redirect_to student_group_users_url }
      format.json { head :ok }
    end
  end
end
