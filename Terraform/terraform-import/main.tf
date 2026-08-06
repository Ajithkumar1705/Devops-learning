provider aws {
  region = "ap-southeast-1"
}

import {
    id = "i-0c4a18c208b251abd"
    to = aws_instance.my_instance
}