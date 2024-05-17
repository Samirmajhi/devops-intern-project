[
  {
    "name": "hello-world",
    "image": "${aws_account_id}.dkr.ecr.${aws_region}.amazonaws.com/hello-world:latest",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 3000,
        "hostPort": 3000
      }
    ]
  }
]
