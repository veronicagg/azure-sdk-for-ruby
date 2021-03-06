# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # Service health policy
    #
    #
    class ServiceTypeDeltaHealthPolicy

      include MsRestAzure

      # @return [Integer] Maximum percentage of unhealthy services in cluster
      attr_accessor :max_percent_delta_unhealthy_services


      #
      # Mapper for ServiceTypeDeltaHealthPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTypeDeltaHealthPolicy',
          type: {
            name: 'Composite',
            class_name: 'ServiceTypeDeltaHealthPolicy',
            model_properties: {
              max_percent_delta_unhealthy_services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPercentDeltaUnhealthyServices',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
