terraform {
  backend "s3" {
    bucket         = "neo321"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "my-tf-lock-table"
  }
}

provider "aws" {
  region     = "ap-south-1"
  secret_key = "rQzwO/Nv9WyTo/Ax/mFTjCtUSoMJPFbvkEyChE6U"
  access_key = "AKIAVDWRKOZAWG5WNB2C"

}


resource "aws_instance" "web" {
  ami           = "ami-068257025f72f470d"
  instance_type = "t2.micro"
}
