require "cancan/version"
require 'cancan/ability'
require 'cancan/rule'
require 'cancan/concepts/utils/actions'
require 'cancan/concepts/utils/authorization'
require 'cancan/concepts/utils/id_param'
require 'cancan/concepts/utils/parent'
require 'cancan/concepts/utils/resource_class'
require 'cancan/concepts/base'
require 'cancan/concepts/accessor'
require 'cancan/concepts/authorize_resource'
require 'cancan/concepts/build_resource'
require 'cancan/concepts/find_resource'
require 'cancan/concepts/load_resource'
require 'cancan/concepts/load_inherited_resource'
require 'cancan/concepts/base_resource_class'
require 'cancan/concepts/override_authorization'
require 'cancan/controller_resource'
require 'cancan/controller_additions'
require 'cancan/model_additions'
require 'cancan/exceptions'
require 'cancan/inherited_resource'

require 'cancan/model_adapters/abstract_adapter'
require 'cancan/model_adapters/default_adapter'

if defined? ActiveRecord
  require 'cancan/model_adapters/active_record_adapter'
  if ActiveRecord.respond_to?(:version) &&
      ActiveRecord.version >= Gem::Version.new("4")
    require 'cancan/model_adapters/active_record_4_adapter'
  else
    require 'cancan/model_adapters/active_record_3_adapter'
  end
end

require 'cancan/model_adapters/data_mapper_adapter' if defined? DataMapper
require 'cancan/model_adapters/mongoid_adapter' if defined?(Mongoid) && defined?(Mongoid::Document)
require 'cancan/model_adapters/sequel_adapter' if defined? Sequel
