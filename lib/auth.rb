class Auth

  ALGORITHM='HS256'

  def self.issue(payload)
    JWT.encode(payload, secret_key, ALGORITHM)
  end

  def self.decode(payload)
    JWT.decode(payload, secret_key, true, {algorithm: ALGORITHM}).first
  end

  def self.secret_key
    # ENV["SECRET_KEY"]
    # temp key
    "649ec52f292d6e263a9440bb34c950e9bce4be8d6c1106bf12b09ff1ceda0713c224b0fe1558b20666e55f997eefba40df6d3b7d1795343dff14509e1e7622c1"
  end
end
