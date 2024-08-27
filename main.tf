terraform {
  backend "s3" {
  }
}
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      STAGE              = var.stage
    }
  }
}

resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic-pipe"
}
