require 'test_helper'

class ReceiptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receipt = receipts(:one)
  end

  test "should get index" do
    get receipts_url
    assert_response :success
  end

  test "should get new" do
    get new_receipt_url
    assert_response :success
  end

  test "should create receipt" do
    assert_difference('Receipt.count') do
      post receipts_url, params: { receipt: { addressee: @receipt.addressee, billing_date: @receipt.billing_date, issuer_address: @receipt.issuer_address, issuer_name: @receipt.issuer_name, no: @receipt.no, price: @receipt.price, proviso: @receipt.proviso } }
    end

    assert_redirected_to receipt_url(Receipt.last)
  end

  test "should show receipt" do
    get receipt_url(@receipt)
    assert_response :success
  end

  test "should get edit" do
    get edit_receipt_url(@receipt)
    assert_response :success
  end

  test "should update receipt" do
    patch receipt_url(@receipt), params: { receipt: { addressee: @receipt.addressee, billing_date: @receipt.billing_date, issuer_address: @receipt.issuer_address, issuer_name: @receipt.issuer_name, no: @receipt.no, price: @receipt.price, proviso: @receipt.proviso } }
    assert_redirected_to receipt_url(@receipt)
  end

  test "should destroy receipt" do
    assert_difference('Receipt.count', -1) do
      delete receipt_url(@receipt)
    end

    assert_redirected_to receipts_url
  end
end
