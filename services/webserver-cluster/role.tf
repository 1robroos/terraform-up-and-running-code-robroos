resource "aws_iam_instance_profile" "iam_profile" {
  name = var.iam_profile
  role = aws_iam_role.role.name
}

resource "aws_iam_role" "role" {
  name = var.iam_role
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}


#Attach Policies to Instance Role
#https://aws.amazon.com/blogs/mt/applying-managed-instance-policy-best-practices/
resource "aws_iam_policy_attachment" "test_attach1" {
  name       = "test-attachment"
  roles      = [aws_iam_role.role.id]
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_policy_attachment" "test_attach2" {
  name       = "test-attachment"
  roles      = [aws_iam_role.role.id]
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMDirectoryServiceAccess"
}

resource "aws_iam_policy_attachment" "test_attach3" {
  name       = "test-attachment"
  roles      = [aws_iam_role.role.id]
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}
