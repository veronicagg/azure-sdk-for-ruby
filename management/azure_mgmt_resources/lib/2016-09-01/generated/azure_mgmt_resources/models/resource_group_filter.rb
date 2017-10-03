# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources::Api_2016_09_01
  module Models
    #
    # Resource group filter.
    #
    class ResourceGroupFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The tag name.
      attr_accessor :tag_name

      # @return [String] The tag value.
      attr_accessor :tag_value


      #
      # Mapper for ResourceGroupFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceGroupFilter',
          type: {
            name: 'Composite',
            class_name: 'ResourceGroupFilter',
            model_properties: {
              tag_name: {
                required: false,
                serialized_name: 'tagName',
                type: {
                  name: 'String'
                }
              },
              tag_value: {
                required: false,
                serialized_name: 'tagValue',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end