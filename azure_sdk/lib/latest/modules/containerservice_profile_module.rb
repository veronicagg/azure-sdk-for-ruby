# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_service'

module Azure::Profiles::Latest
  module ContainerService
    module Mgmt
      Operations = Azure::ContainerService::Mgmt::V2018_03_31::Operations
      ManagedClusters = Azure::ContainerService::Mgmt::V2018_03_31::ManagedClusters
      ContainerServices = Azure::ContainerService::Mgmt::V2017_09_30::ContainerServices

      module Models
        ContainerServiceCustomProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceCustomProfile
        ContainerServiceOrchestratorProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorProfile
        ContainerServiceAgentPoolProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceAgentPoolProfile
        ContainerServiceListResult = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceListResult
        ContainerService = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerService
        ContainerServiceOrchestratorTypes = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorTypes
        ContainerServiceLinuxProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceLinuxProfile
        ContainerServiceNetworkProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceNetworkProfile
        OperationListResult = Azure::ContainerService::Mgmt::V2018_03_31::Models::OperationListResult
        ContainerServiceVMDiagnostics = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceVMDiagnostics
        TagsObject = Azure::ContainerService::Mgmt::V2018_03_31::Models::TagsObject
        ContainerServiceDiagnosticsProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceDiagnosticsProfile
        ContainerServiceServicePrincipalProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceServicePrincipalProfile
        ManagedClusterAddonProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAddonProfile
        ManagedClusterAgentPoolProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAgentPoolProfile
        ManagedClusterAADProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAADProfile
        ContainerServiceSshPublicKey = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceSshPublicKey
        ContainerServiceSshConfiguration = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceSshConfiguration
        OperationValue = Azure::ContainerService::Mgmt::V2018_03_31::Models::OperationValue
        KeyVaultSecretRef = Azure::ContainerService::Mgmt::V2018_03_31::Models::KeyVaultSecretRef
        ManagedClusterListResult = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterListResult
        ContainerServiceWindowsProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceWindowsProfile
        ContainerServiceMasterProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceMasterProfile
        ManagedClusterUpgradeProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterUpgradeProfile
        Resource = Azure::ContainerService::Mgmt::V2018_03_31::Models::Resource
        ManagedClusterPoolUpgradeProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterPoolUpgradeProfile
        ManagedCluster = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedCluster
        ManagedClusterAccessProfile = Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAccessProfile
        ContainerServiceStorageProfileTypes = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceStorageProfileTypes
        ContainerServiceVMSizeTypes = Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceVMSizeTypes
        OSType = Azure::ContainerService::Mgmt::V2018_03_31::Models::OSType
        NetworkPlugin = Azure::ContainerService::Mgmt::V2018_03_31::Models::NetworkPlugin
        NetworkPolicy = Azure::ContainerService::Mgmt::V2018_03_31::Models::NetworkPolicy
        OrchestratorVersionProfile = Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfile
        OrchestratorVersionProfileListResult = Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfileListResult
        OrchestratorProfile = Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorProfile
      end

      class ContainerServiceManagementClass
        attr_reader :operations, :managed_clusters, :container_services, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerService::Mgmt::V2017_07_01::ContainerServiceClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)

          @client_1 = Azure::ContainerService::Mgmt::V2018_03_31::ContainerServiceClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @operations = @client_1.operations
          @managed_clusters = @client_1.managed_clusters

          @client_2 = Azure::ContainerService::Mgmt::V2017_09_30::ContainerServiceClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @container_services = @client_2.container_services

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContainerService/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def container_service_custom_profile
            Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceCustomProfile
          end
          def container_service_orchestrator_profile
            Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorProfile
          end
          def container_service_agent_pool_profile
            Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceAgentPoolProfile
          end
          def container_service_list_result
            Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceListResult
          end
          def container_service
            Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerService
          end
          def container_service_orchestrator_types
            Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorTypes
          end
          def container_service_linux_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceLinuxProfile
          end
          def container_service_network_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceNetworkProfile
          end
          def operation_list_result
            Azure::ContainerService::Mgmt::V2018_03_31::Models::OperationListResult
          end
          def container_service_vmdiagnostics
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceVMDiagnostics
          end
          def tags_object
            Azure::ContainerService::Mgmt::V2018_03_31::Models::TagsObject
          end
          def container_service_diagnostics_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceDiagnosticsProfile
          end
          def container_service_service_principal_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceServicePrincipalProfile
          end
          def managed_cluster_addon_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAddonProfile
          end
          def managed_cluster_agent_pool_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAgentPoolProfile
          end
          def managed_cluster_aadprofile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAADProfile
          end
          def container_service_ssh_public_key
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceSshPublicKey
          end
          def container_service_ssh_configuration
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceSshConfiguration
          end
          def operation_value
            Azure::ContainerService::Mgmt::V2018_03_31::Models::OperationValue
          end
          def key_vault_secret_ref
            Azure::ContainerService::Mgmt::V2018_03_31::Models::KeyVaultSecretRef
          end
          def managed_cluster_list_result
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterListResult
          end
          def container_service_windows_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceWindowsProfile
          end
          def container_service_master_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceMasterProfile
          end
          def managed_cluster_upgrade_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterUpgradeProfile
          end
          def resource
            Azure::ContainerService::Mgmt::V2018_03_31::Models::Resource
          end
          def managed_cluster_pool_upgrade_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterPoolUpgradeProfile
          end
          def managed_cluster
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedCluster
          end
          def managed_cluster_access_profile
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ManagedClusterAccessProfile
          end
          def container_service_storage_profile_types
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceStorageProfileTypes
          end
          def container_service_vmsize_types
            Azure::ContainerService::Mgmt::V2018_03_31::Models::ContainerServiceVMSizeTypes
          end
          def ostype
            Azure::ContainerService::Mgmt::V2018_03_31::Models::OSType
          end
          def network_plugin
            Azure::ContainerService::Mgmt::V2018_03_31::Models::NetworkPlugin
          end
          def network_policy
            Azure::ContainerService::Mgmt::V2018_03_31::Models::NetworkPolicy
          end
          def orchestrator_version_profile
            Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfile
          end
          def orchestrator_version_profile_list_result
            Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfileListResult
          end
          def orchestrator_profile
            Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorProfile
          end
        end
      end
    end
  end
end
