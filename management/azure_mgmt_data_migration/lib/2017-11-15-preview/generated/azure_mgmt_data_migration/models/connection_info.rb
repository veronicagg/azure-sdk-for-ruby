# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Defines the connection properties of a server
    #
    class ConnectionInfo

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["SqlConnectionInfo"] = "SqlConnectionInfo"

      def initialize
        @type = "Unknown"
      end

      attr_accessor :type

      # @return [String] User name
      attr_accessor :user_name

      # @return [String] Password credential.
      attr_accessor :password


      #
      # Mapper for ConnectionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Unknown',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'ConnectionInfo',
            class_name: 'ConnectionInfo',
            model_properties: {
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
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