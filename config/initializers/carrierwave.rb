CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIIM73EBG2BKFH4UA',     # required
    :aws_secret_access_key  => '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', # required
    :region                 => 'eu-west-1'                   # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'hooter' # required
  config.fog_public     = true     # optional, defaults to true
  
end