provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}
#provider "aws" {
#  profile      = "reiterraform"
#  region = "us-west-2"
#  alias = "oregon"
#  shared_credentials_file = "/home/jorgeherran/.aws/credentials"
  #assume_role {
  #  role_arn     = "arn:aws:iam::ACCOUNT_ID:role/ROLE_NAME"
  #  
  #}
}