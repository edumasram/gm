require 'test_helper'

class CervejasControllerTest < ActionController::TestCase
  setup do
    @cerveja = cervejas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cervejas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cerveja" do
    assert_difference('Cerveja.count') do
      post :create, cerveja: { descricao: @cerveja.descricao, nome: @cerveja.nome }
    end

    assert_redirected_to cerveja_path(assigns(:cerveja))
  end

  test "should show cerveja" do
    get :show, id: @cerveja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cerveja
    assert_response :success
  end

  test "should update cerveja" do
    put :update, id: @cerveja, cerveja: { descricao: @cerveja.descricao, nome: @cerveja.nome }
    assert_redirected_to cerveja_path(assigns(:cerveja))
  end

  test "should destroy cerveja" do
    assert_difference('Cerveja.count', -1) do
      delete :destroy, id: @cerveja
    end

    assert_redirected_to cervejas_path
  end
end
