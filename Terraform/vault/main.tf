provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://13.200.229.96:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "a20c940c-0845-4723-511f-34889ed28d68 "
      secret_id = "f1b24b9c-2e76-8c83-9e73-f23e5b96e168"
    }
  }
}
data "vault_kv_secret_v2" "example" {
  mount = "secrets" // change it according to your mount
  name  = "secrets" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["test"]
  }
}

