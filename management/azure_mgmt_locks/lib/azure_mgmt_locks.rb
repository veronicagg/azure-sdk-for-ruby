# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2015-01-01/generated/azure_mgmt_locks'
require '2016-09-01/generated/azure_mgmt_locks'
# Adding require for the profiles
require_relative 'profiles/Profile_2015_01_01/profile_client'
require_relative 'profiles/Profile_2016_09_01/profile_client'
require_relative 'profiles/Profile_Latest/profile_client'
