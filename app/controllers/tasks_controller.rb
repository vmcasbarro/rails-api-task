class TasksController < ProtectedController
  before_action :set_task, only: [:update, :destroy]

  # GET /tasks
  def index
    @list = current_user.lists.find(params[:list_id])
    @tasks = @list.tasks.all.order(:created_at)

    render json: @tasks
  end

  # GET /tasks/1
  def show
    @list = current_user.lists.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    render json: @task
  end

  # POST /tasks
  def create
    @list = current_user.lists.find(params[:list_id])

    @task = @list.tasks.build(task_params)

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @list = current_user.lists.find(params[:list_id])
    @task = @list.tasks.find(params[:id])

    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @list = current_user.lists.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:task_name, :list_id, :completed)
    end
end
