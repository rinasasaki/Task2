class TasksController < ApplicationController

  #indexメソッド
  def index
    @tasks = Task.all
    #全ての配列を取得
    @task = Task.new
    #モデルクラスのインスタンス化(form withでモデルのインスタンスを渡すため)
  end

  #createメソッド
  def create
    task = Task.new(task_params)
    #モデルクラスのインスタンス化（値を取る）
    task.save
    redirect_to tasks_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  end
  # destroyアクションを追加
  # Task.find(task_params)をtaskに入れて値を取り出す。
  # task.destroyで消す作業を記述

  def edit
    @task = Task.find(params[:id])
  end
#editアクションを追加
#Task.find(task_params)をtaskに入れて値を取り出す。

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to tasks_path
  end

  def show
    task = Task.find(params[:id])
  end


  private

  def task_params
    params.require(:task).permit(:title, :content)
  end
end

