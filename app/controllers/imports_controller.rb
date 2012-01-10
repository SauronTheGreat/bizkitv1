class ImportsController < ApplicationController
  # GET /imports
  # GET /imports.json

  def index
    @imports = Import.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imports }
    end
  end

  # GET /imports/1
  # GET /imports/1.json
  def show
    @import = Import.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @import }
    end
  end

  # GET /imports/new
  # GET /imports/new.json

  def new
    @import = Import.new
    @facilitator=Facilitator.find_by_user_id(current_user.id)
    @institutes=@facilitator.institutes.collect{|inst|[inst.name,inst.id]}


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @import }
    end
  end

  # GET /imports/1/edit
  def edit
    @import = Import.find(params[:id])
  end

  # POST /imports
  # POST /imports.json
  require "spreadsheet"

  def create
    @import = Import.new(params[:import])

    respond_to do |format|
      if @import.save


    #@path=@import.excel_list.path
    #book = Spreadsheet.open @path
    #sheet1 = book.worksheet 0
    #sheet1.each 1 do |row|
    #  render :text=>row[8]
    #        return
    #
    #end

        User.mass_create_users(@import.id)

        format.html{redirect_to root_path}
        #format.html { redirect_to @import, notice: 'Import was successfully created.' }
        format.json { render json: @import, status: :created, location: @import }
      else
        format.html { render action: "new" }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imports/1
  # PUT /imports/1.json
  def update
    @import = Import.find(params[:id])

    respond_to do |format|
      if @import.update_attributes(params[:import])
        format.html { redirect_to @import, notice: 'Import was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imports/1
  # DELETE /imports/1.json
  def destroy
    @import = Import.find(params[:id])
    @import.destroy

    respond_to do |format|
      format.html { redirect_to imports_url }
      format.json { head :ok }
    end
  end
end
