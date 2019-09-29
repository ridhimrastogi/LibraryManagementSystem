class BookIssueHistoriesController < ApplicationController
  before_action :set_book_issue_history, only: [:show, :edit, :update, :destroy]

  # GET /book_issue_histories
  # GET /book_issue_histories.json
  def index
    @book_issue_histories = BookIssueHistory.all
  end

  # GET /book_issue_histories/1
  # GET /book_issue_histories/1.json
  def show
  end

  # GET /book_issue_histories/new
  def new
    @book_issue_history = BookIssueHistory.new
  end

  # GET /book_issue_histories/1/edit
  def edit
  end

  # POST /book_issue_histories
  # POST /book_issue_histories.json
  def create
    @book_issue_history = BookIssueHistory.new(book_issue_history_params)

    respond_to do |format|
      if @book_issue_history.save
        format.html { redirect_to @book_issue_history, notice: 'Book issue history was successfully created.' }
        format.json { render :show, status: :created, location: @book_issue_history }
      else
        format.html { render :new }
        format.json { render json: @book_issue_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_issue_histories/1
  # PATCH/PUT /book_issue_histories/1.json
  def update
    respond_to do |format|
      if @book_issue_history.update(book_issue_history_params)
        format.html { redirect_to @book_issue_history, notice: 'Book issue history was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_issue_history }
      else
        format.html { render :edit }
        format.json { render json: @book_issue_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_issue_histories/1
  # DELETE /book_issue_histories/1.json
  def destroy
    @book_issue_history.destroy
    respond_to do |format|
      format.html { redirect_to book_issue_histories_url, notice: 'Book issue history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_issue_history
      @book_issue_history = BookIssueHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_issue_history_params
      params.require(:book_issue_history).permit(:issue_date, :return_date, :overdue_date)
    end
end
