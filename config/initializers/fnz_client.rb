module Fnz
  unless defined? HYDRA
    HYDRA = Typhoeus::Hydra.new
  end

  HOST = case Rails.env
    when "production"
     "fnz.herokuapp.com"
    when "development"
     "localhost:3008"
    when "staging"
     "fnz-staging.herokuapp.com"
    when "test"
     "localhost:3008"
  end
end
