#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "backports"
require "minitest/autorun"
require "mocha/setup"

# Attempt to load turn to show formatted test results
begin
  require "turn"
  Turn.config.format = :pretty
  Turn.config.natural = true
rescue LoadError
end

# add to the MiniTest DSL
module Kernel
  def need_tests_for(name)
    describe "##{name}" do
      it "needs unit tests" do
        skip ""
      end
    end
  end
end


Dir["./test/support/**/*.rb"].each { |dep| require dep }

# mock configuration setup
require 'azure'

Azure.config.account_name     = "accountname"
Azure.config.access_key       = "YWNjZXNzLWtleQ=="
# Azure.config.table_host     = 
# Azure.config.blob_host      = 
# Azure.config.queue_host     = 
# Azure.config.acs_namespace  = 
# Azure.config.sb_access_key  = 
# Azure.config.sb_issuer      = 