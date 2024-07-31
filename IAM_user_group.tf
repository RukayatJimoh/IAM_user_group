#IAM user creation
resource "aws_iam_user" "Xclothing" {
  name = "James_Brown"
}

resource "aws_iam_user" "Yclothing" {
  name = "James_Blue"
}

#IAM Group creation
resource "aws_iam_group" "Clothing_line" {
  name = "Clothing_team"
}

#Adding the users into a group
resource "aws_iam_group_membership" "team" {
  name = "group_membership"

  users = [
    aws_iam_user.Xclothing.name,
    aws_iam_user.Yclothing.name,
  ]

  group = aws_iam_group.Clothing_line.name
}

#creating policy to the iam group 
resource "aws_iam_group_policy" "Clothing_team_policy" {
  name  = "Clothing_team_policy"
  group = aws_iam_group.Clothing_line.name

  policy = jsonencode({
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "Statement1",
			"Effect": "Allow",
			"Action": [
				"iam:ChangePassword",
				"iam:CreateAccessKey",
				"iam:CreateGroup",
				"iam:CreateRole",
				"iam:CreateUser",
				"iam:DeleteGroup",
				"iam:DeleteAccessKey",
				"iam:DeleteRole"
			],
			"Resource": [
                "arn:aws:iam::381492316476:group/Clothing_team"
            ]
		}
	]
})
}


  
  