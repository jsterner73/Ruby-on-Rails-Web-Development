class TodoListsController < ApplicationController
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

  # GET /todo_lists
  # GET /todo_lists.json
  def index
<<<<<<< HEAD
    @todo_lists = current_user.todo_lists.paginate(page: params[:page], per_page: 8)
=======
    @todo_lists = TodoList.all
>>>>>>> 2c439b8be001a1e2440496d55bde3b2670224c02
  end

  # GET /todo_lists/1
  # GET /todo_lists/1.json
  def show
  end

  # GET /todo_lists/new
  def new
<<<<<<< HEAD
    @todo_list = current_user.todo_lists.new
=======
    @todo_list = TodoList.new
>>>>>>> 2c439b8be001a1e2440496d55bde3b2670224c02
  end

  # GET /todo_lists/1/edit
  def edit
  end

  # POST /todo_lists
  # POST /todo_lists.json
  def create
<<<<<<< HEAD
    @todo_list = current_user.todo_lists.new(todo_list_params)
=======
    @todo_list = TodoList.new(todo_list_params)
>>>>>>> 2c439b8be001a1e2440496d55bde3b2670224c02

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to @todo_list, notice: 'Todo list was successfully created.' }
        format.json { render :show, status: :created, location: @todo_list }
      else
        format.html { render :new }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_lists/1
  # PATCH/PUT /todo_lists/1.json
  def update
    respond_to do |format|
      if @todo_list.update(todo_list_params)
        format.html { redirect_to @todo_list, notice: 'Todo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_list }
      else
        format.html { render :edit }
        format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_lists/1
  # DELETE /todo_lists/1.json
  def destroy
    @todo_list.destroy
    respond_to do |format|
      format.html { redirect_to todo_lists_url, notice: 'Todo list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_list
<<<<<<< HEAD
      @todo_list = current_user.todo_lists.find(params[:id])
=======
      @todo_list = TodoList.find(params[:id])
>>>>>>> 2c439b8be001a1e2440496d55bde3b2670224c02
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_list_params
      params.require(:todo_list).permit(:list_name, :list_due_date)
    end
end
