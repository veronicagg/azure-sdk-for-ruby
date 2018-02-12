# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Coordinates within an image
    #
    class Coordinate

      include MsRestAzure

      # @return [Float] The horizontal component, in pixels.
      attr_accessor :x

      # @return [Float] The vertical component, in pixels.
      attr_accessor :y


      #
      # Mapper for Coordinate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Coordinate',
          type: {
            name: 'Composite',
            class_name: 'Coordinate',
            model_properties: {
              x: {
                client_side_validation: true,
                required: true,
                serialized_name: 'x',
                type: {
                  name: 'Double'
                }
              },
              y: {
                client_side_validation: true,
                required: true,
                serialized_name: 'y',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end