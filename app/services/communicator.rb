class Communicator

  def user_conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def product_conn
    Faraday.new(url: 'http://localhost:8088')
  end

  def users
    user_conn.get 'users'
  end

  def products
    product_conn.get 'products'
  end

  def get_user(user_id)
    user_conn.get "users/#{user_id}"
  end

  def get_product(product_id)
    product_conn.get "products/#{product_id}"
  end
end
