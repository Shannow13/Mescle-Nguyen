require 'test_helper'

class BooksKindsControllerTest < ActionController::TestCase
  setup do
    @books_kind = books_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create books_kind" do
    assert_difference('BooksKind.count') do
      post :create, books_kind: { cote_books: @books_kind.cote_books, cote_kind: @books_kind.cote_kind }
    end

    assert_redirected_to books_kind_path(assigns(:books_kind))
  end

  test "should show books_kind" do
    get :show, id: @books_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @books_kind
    assert_response :success
  end

  test "should update books_kind" do
    patch :update, id: @books_kind, books_kind: { cote_books: @books_kind.cote_books, cote_kind: @books_kind.cote_kind }
    assert_redirected_to books_kind_path(assigns(:books_kind))
  end

  test "should destroy books_kind" do
    assert_difference('BooksKind.count', -1) do
      delete :destroy, id: @books_kind
    end

    assert_redirected_to books_kinds_path
  end
end
