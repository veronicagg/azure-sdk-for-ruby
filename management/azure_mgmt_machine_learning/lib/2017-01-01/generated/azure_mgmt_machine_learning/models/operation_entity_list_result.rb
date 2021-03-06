# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearning::Mgmt::V2017_01_01
  module Models
    #
    # The list of REST API operations.
    #
    class OperationEntityListResult

      include MsRestAzure

      # @return [Array<OperationEntity>] The list of operations.
      attr_accessor :value


      #
      # Mapper for OperationEntityListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationEntityListResult',
          type: {
            name: 'Composite',
            class_name: 'OperationEntityListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OperationEntityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OperationEntity'
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
