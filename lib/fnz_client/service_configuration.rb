module FnzClient
  module ServiceConfiguration
    def self.included(base)
      base.send('use_hydra', Fnz::HYDRA)
      #base.send('force_ssl')
      base.send('set_resource_host', Fnz::HOST)
      base.send('configure_index_response', {collection: 'collection', total: 'total'})
    end
  end
end