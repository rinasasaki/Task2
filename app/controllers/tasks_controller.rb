class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

    #indexメソッド
    #全ての配列を取得
    #モデルクラスのインスタンス化(form withでモデルのインスタンスを渡すため)

  def create
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

    #createメソッド
    #モデルクラスのインスタンス化（値を取る）
    #saveメソッドでデータベースに保存
    #一覧画面に戻る

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path
  end

    # destroyアクションを追加
    # Task.find(task_params)をtaskに入れて値を取り出す。
    # task.destroyで消す作業を記述
    #redirect_to で削除を実行したら一覧画面に戻る。

  def edit
    @task = Task.find(params[:id])
  end

    #editアクションを追加
    #Task.find(task_params)をtaskに入れて値を取り出す。

  def update
    @task = Task.find(params[:id])
    if task.update(task_params)
    redirect_to task_path
  else
    render :edit
  end
end

    #updateメソッド
    #Task.find(params[:id])をtaskに入れて値を取り出す。
    #そのIDのタイトルと内容だったら更新して、一覧画面に戻る
    #違ったら、編集画面に戻る

  def show
    @task = Task.find(params[:id])
  end

    # @tasks = Task.all
    # #全ての配列を取得
    # @task = Task.new


  private

  def task_params
    params.require(:task).permit(:title, :content)
  end

  #ストロングパラメータでtitleとcontentだけを取得できるようにする

end

    

