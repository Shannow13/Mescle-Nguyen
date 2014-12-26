class BooksKindsController < ApplicationController
  before_action :set_books_kind, only: [:show, :edit, :update, :destroy]

  # GET /books_kinds
  # GET /books_kinds.json
  def index
    @books_kinds = BooksKind.all
  end

  # GET /books_kinds/1
  # GET /books_kinds/1.json
  def show
  end

  # GET /books_kinds/new
  def new
    @books_kind = BooksKind.new
  end

  # GET /books_kinds/1/edit
  def edit
  end

  # POST /books_kinds
  # POST /books_kinds.json
  def create
    @books_kind = BooksKind.new(books_kind_params)

    respond_to do |format|
      if @books_kind.save
        format.html { redirect_to @books_kind, notice: 'Books kind was successfully created.' }
        format.json { render :show, status: :created, location: @books_kind }
      else
        format.html { render :new }
        format.json { render json: @books_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books_kinds/1
  # PATCH/PUT /books_kinds/1.json
  def update
    respond_to do |format|
      if @books_kind.update(books_kind_params)
        format.html { redirect_to @books_kind, notice: 'Books kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @books_kind }
      else
        format.html { render :edit }
        format.json { render json: @books_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books_kinds/1
  # DELETE /books_kinds/1.json
  def destroy
    @books_kind.destroy
    respond_to do |format|
      format.html { redirect_to books_kinds_url, notice: 'Books kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_books_kind
      @books_kind = BooksKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def books_kind_params
      params.require(:books_kind).permit(:cote_books, :cote_kind)
    end
end
