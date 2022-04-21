version = 0.1
[y]
[y.deploy]
[y.deploy.parameters]
stack_name = "Alexandrehellowordtesteongitactions"
s3_bucket = "aws-sam-cli-managed-default-samclisourcebucket-1c8lbsq4848hs"
s3_prefix = "Alexandrehellowordtesteongitactions"
region = "us-east-1"
profile = "musa-lab"
confirm_changeset = true
capabilities = "CAPABILITY_IAM"
parameter_overrides = "AppName=\"testegolanggitactions\" AppVersion=\"1.0.0\" AppEnv=\"\" DatabaseBackupRetentionPeriod=\"0\" DatabaseAllocatedStorage=\"20\""
image_repositories = ["AlexandrelanAlexandreHelloWorldFunction=205651454669.dkr.ecr.us-east-1.amazonaws.com/alexandrehellowordtesteongitactions3e1488eb/alexandrelanalexandrehelloworldfunction764698fdrepo"]
disable_rollback = true

[default]
[default.deploy]
[default.deploy.parameters]
stack_name = "testealexandrehellowgitactions"
s3_bucket = "aws-sam-cli-managed-default-samclisourcebucket-1c8lbsq4848hs"
s3_prefix = "testealexandrehellowgitactions"
region = "us-east-1"
profile = "musa-lab"
confirm_changeset = true
capabilities = "CAPABILITY_IAM"
disable_rollback = true
parameter_overrides = "AppName=\"testealexandrehellowgitactions\" AppVersion=\"1.0\" AppEnv=\"dev\" DatabaseInstanceIdentifier=\"alexandre01\" DatabaseName=\"postgres\" DatabaseBackupRetentionPeriod=\"0\" DatabaseAllocatedStorage=\"20\" DatabaseEngineVersion=\"11.13\" DatabaseInstanceClass=\"db.t2.micro\""
image_repositories = ["AlexandreHelloTeste=205651454669.dkr.ecr.us-east-1.amazonaws.com/testealexandrehellowgitactions686f2b39/alexandrehellotestecc2944d2repo"]
