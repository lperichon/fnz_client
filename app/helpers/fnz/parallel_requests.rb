module Fnz
  # Wraps around Hydra for readibility
  module ParallelRequests
    def self.run
      HYDRA.run
    end
  end
end