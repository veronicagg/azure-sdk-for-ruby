# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Sampling settigs contract.
    #
    class LoggerSamplingContract

      include MsRestAzure

      # @return [SamplingType] Sampling type. Possible values include: 'fixed',
      # 'adaptive'
      attr_accessor :sampling_type

      # @return [Float] Rate of sampling for fixed-rate sampling.
      attr_accessor :percentage

      # @return [Integer] Target rate of telemetry items per second.
      attr_accessor :max_telemetry_items_per_second

      # @return [Duration] Rate re-evaluation interval in ISO8601 format.
      attr_accessor :evaluation_interval

      # @return [Duration] Duration in ISO8601 format after which it's allowed
      # to lower the sampling rate.
      attr_accessor :percentage_decrease_timeout

      # @return [Duration] Duration in ISO8601 format after which it's allowed
      # to increase the sampling rate.
      attr_accessor :percentage_increase_timeout

      # @return [Float] Minimum allowed rate of sampling.
      attr_accessor :min_percentage

      # @return [Float] Maximum allowed rate of sampling.
      attr_accessor :max_percentage

      # @return [Float] Moving average ration assigned to most recent value.
      attr_accessor :moving_average_ratio

      # @return [Float] Initial sampling rate.
      attr_accessor :initial_percentage


      #
      # Mapper for LoggerSamplingContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoggerSamplingContract',
          type: {
            name: 'Composite',
            class_name: 'LoggerSamplingContract',
            model_properties: {
              sampling_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.samplingType',
                type: {
                  name: 'String'
                }
              },
              percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.percentage',
                type: {
                  name: 'Double'
                }
              },
              max_telemetry_items_per_second: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.maxTelemetryItemsPerSecond',
                type: {
                  name: 'Number'
                }
              },
              evaluation_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.evaluationInterval',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'TimeSpan'
                }
              },
              percentage_decrease_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.percentageDecreaseTimeout',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'TimeSpan'
                }
              },
              percentage_increase_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.percentageIncreaseTimeout',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'TimeSpan'
                }
              },
              min_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.minPercentage',
                type: {
                  name: 'Double'
                }
              },
              max_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.maxPercentage',
                type: {
                  name: 'Double'
                }
              },
              moving_average_ratio: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.movingAverageRatio',
                type: {
                  name: 'Double'
                }
              },
              initial_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.initialPercentage',
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
