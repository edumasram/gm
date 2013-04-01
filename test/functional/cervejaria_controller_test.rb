require 'test_helper'

class CervejariaControllerTest < ActionController::TestCase
  setup do
    @cervejarium = cervejaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cervejaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cervejarium" do
    assert_difference('Cervejarium.count') do
      post :create, cervejarium: { Endereco: @cervejarium.Endereco, Nome: @cervejarium.Nome }
    end

    assert_redirected_to cervejarium_path(assigns(:cervejarium))
  end

  test "should show cervejarium" do
    get :show, id: @cervejarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cervejarium
    assert_response :success
  end

  test "should update cervejarium" do
    put :update, id: @cervejarium, cervejarium: { Endereco: @cervejarium.Endereco, Nome: @cervejarium.Nome }
    assert_redirected_to cervejarium_path(assigns(:cervejarium))
  end

  test "should destroy cervejarium" do
    assert_difference('Cervejarium.count', -1) do
      delete :destroy, id: @cervejarium
    end

    assert_redirected_to cervejaria_path
  end
end
