# IAM_user_group
deploying IAM user and group into AWS using terraform and also attaching the required policy on the group
# AWS IAM
AWS IAM is a web service that enables you to manage access to AWS services and resources securely. With IAM, you can create and manage AWS users and groups and use permissions to allow or deny their access to AWS resources. 

## Here’s a quick rundown of its components:

Root User: The initial account created when you first set up AWS. It has full access to all AWS services and resources.

IAM User: Individual users within your AWS account. Each user has unique credentials and permissions to interact with AWS resources.

IAM Group: A collection of IAM users. Permissions assigned to a group are automatically applied to all its members, simplifying access management.
IAM Policy: A JSON (or Python dictionary) document that defines permissions for an IAM entity (such as a user or group). Policies are essential for specifying what actions are allowed or denied. There are two types of IAM policies: There are two types of IAM policies:
•	AWS Managed Policies: Predefined policies managed by AWS.
•	Customer Managed Policies: Custom policies created by you.

## Key Elements of an IAM Policy:

-	SID (Statement ID): An identifier for the policy statement.
-	Effect: Specifies whether the policy allows or denies access (e.g., "Allow" or "Deny").
-	Action: Defines the actions that are permitted or denied (e.g., s3:ListBucket).
-	Resource: Specifies the AWS resources the actions apply to (e.g., an S3 bucket ARN).




