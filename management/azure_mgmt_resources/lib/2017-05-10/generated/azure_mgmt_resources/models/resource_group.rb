# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2017_05_10
  module Models
    #
    # Resource group information.
    #
    class ResourceGroup

      include MsRestAzure

      # @return [String] The ID of the resource group.
      attr_accessor :id

      # @return [String] The name of the resource group.
      attr_accessor :name

      # @return [ResourceGroupProperties]
      attr_accessor :properties

      # @return [String] The location of the resource group. It cannot be
      # changed after the resource group has been created. It must be one of
      # the supported Azure locations.
      attr_accessor :location

      # @return [String] The ID of the resource that manages this resource
      # group.
      attr_accessor :managed_by

      # @return [Hash{String => String}] The tags attached to the resource
      # group.
      attr_accessor :tags


      #
      # Mapper for ResourceGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceGroup',
          type: {
            name: 'Composite',
            class_name: 'ResourceGroup',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceGroupProperties'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              managed_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedBy',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
