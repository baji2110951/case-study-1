provider "aws"{
  Region = "ap-south-1"
  shared_config_files      = ["$HOME/.aws/conf"]
  shared_credentials_files = ["$HOME/.aws/creds"]
}
