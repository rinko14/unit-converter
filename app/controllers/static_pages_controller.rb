class StaticPagesController < ApplicationController
  def home
    @length_unit_options = %w[meters feet inches]
  end

  def convert
    # リクエストの形式を出力
    p "Request format: #{request.format}"

    # リクエストのHTTPメソッドを出力
    p "Request method: #{request.request_method}"

    # リクエストのパスを出力
    p "Request path: #{request.path}"

    # リクエストの全てのヘッダーを出力
    p "Request headers: #{request.headers}"
    @converted_length = ConvertLength.convert(convert_params)

    respond_to do |format|
      format.js
    end
  end

  private

    def convert_params
      params.permit(:original_length, :original_unit, :converted_unit)
    end
end
