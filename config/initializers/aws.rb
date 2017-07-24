

#밑에 설정 다시 해줘라 init 에 

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJZUXUJURF2E5AW5Q',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    
    endpoint:              'http://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'trippic'                          # required
                 # optional, defaults to true
  config.fog_attributes = { } # optional, defaults to {}
end