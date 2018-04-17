require 'test_helper'

class ProxyControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get proxy_input_url
    assert_response :success
  end

  test "should get output" do
    get proxy_output_url
    assert_response :success
  end

  test "should get output with parametrs" do
    get proxy_output_url params: { val: "1001", side: 'client_with_xslt'}
    assert_response :success
  end

  test 'should return XML' do
    get proxy_output_url, params: { val: '3003', side: 'client-with-xslt' }
    xml = Nokogiri::XML(response.parsed_body)
    value = xml.search('elem').text[-4..-1]
    assert_equal '3003', value
  end

  test "should return various results" do
    get proxy_output_url params: { val: '1001', side: 'client_with_xslt' }
    result1 = response.parsed_body

    get proxy_output_url params: { val: '2002', side: 'client_with_xslt' }
    result2 = response.parsed_body

    assert_not_equal result1, result2
  end

  test 'should return HTML' do
    get proxy_output_url, params: { val: '1001', side: 'server' }
    assert_select 'tr', count: 3
  end
end