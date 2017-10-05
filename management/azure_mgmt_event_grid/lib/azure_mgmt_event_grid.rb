# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-09-15-preview/generated/azure_mgmt_event_grid'
require '2017-06-15-preview/generated/azure_mgmt_event_grid'
# Adding require for the profiles
require_relative 'profiles/Profile_2017_06_15_Preview/profile_client'
require_relative 'profiles/Profile_2017_09_15_Preview/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
