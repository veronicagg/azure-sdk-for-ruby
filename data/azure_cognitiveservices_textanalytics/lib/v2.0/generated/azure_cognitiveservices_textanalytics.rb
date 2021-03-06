# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'v2.0/generated/azure_cognitiveservices_textanalytics/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::TextAnalytics::V2_0
  autoload :TextAnalyticsClient,                                'v2.0/generated/azure_cognitiveservices_textanalytics/text_analytics_client.rb'

  module Models
    autoload :DetectedLanguage,                                   'v2.0/generated/azure_cognitiveservices_textanalytics/models/detected_language.rb'
    autoload :MultiLanguageInput,                                 'v2.0/generated/azure_cognitiveservices_textanalytics/models/multi_language_input.rb'
    autoload :LanguageBatchResultItem,                            'v2.0/generated/azure_cognitiveservices_textanalytics/models/language_batch_result_item.rb'
    autoload :KeyPhraseBatchResultItem,                           'v2.0/generated/azure_cognitiveservices_textanalytics/models/key_phrase_batch_result_item.rb'
    autoload :LanguageBatchResult,                                'v2.0/generated/azure_cognitiveservices_textanalytics/models/language_batch_result.rb'
    autoload :KeyPhraseBatchResult,                               'v2.0/generated/azure_cognitiveservices_textanalytics/models/key_phrase_batch_result.rb'
    autoload :SentimentBatchResultItem,                           'v2.0/generated/azure_cognitiveservices_textanalytics/models/sentiment_batch_result_item.rb'
    autoload :ErrorResponse,                                      'v2.0/generated/azure_cognitiveservices_textanalytics/models/error_response.rb'
    autoload :SentimentBatchResult,                               'v2.0/generated/azure_cognitiveservices_textanalytics/models/sentiment_batch_result.rb'
    autoload :BatchInput,                                         'v2.0/generated/azure_cognitiveservices_textanalytics/models/batch_input.rb'
    autoload :MatchRecord,                                        'v2.0/generated/azure_cognitiveservices_textanalytics/models/match_record.rb'
    autoload :ErrorRecord,                                        'v2.0/generated/azure_cognitiveservices_textanalytics/models/error_record.rb'
    autoload :EntityRecord,                                       'v2.0/generated/azure_cognitiveservices_textanalytics/models/entity_record.rb'
    autoload :Input,                                              'v2.0/generated/azure_cognitiveservices_textanalytics/models/input.rb'
    autoload :EntitiesBatchResultItem,                            'v2.0/generated/azure_cognitiveservices_textanalytics/models/entities_batch_result_item.rb'
    autoload :InternalError,                                      'v2.0/generated/azure_cognitiveservices_textanalytics/models/internal_error.rb'
    autoload :EntitiesBatchResult,                                'v2.0/generated/azure_cognitiveservices_textanalytics/models/entities_batch_result.rb'
    autoload :MultiLanguageBatchInput,                            'v2.0/generated/azure_cognitiveservices_textanalytics/models/multi_language_batch_input.rb'
  end
end
