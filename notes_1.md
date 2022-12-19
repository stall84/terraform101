### Terraform Fundamentals Using AWS Provider
- Course is from Udemy lecture 'Terraform for AWS - Beginner to Expert' by TJ Adams


#### [Terraform State File](https://developer.hashicorp.com/terraform/language/state)
- Considered by Instructor to be the **singlemost important** file in the terraform system.
- Stored in a local file in the root (same level as _'main.tf'_) as _*terraform.tfstate*_
- Very similar if not identical to a _JSON_ file
- By default a 2nd file is created in the same level directory called _terraform.tfstate.backup_ 
- Keeps track of **all changes made** 
- Used by terraform to keep track and bearings on all creation and deletion of resources. Similar to a _package-lock.json_ for npm, but far more important

#### [Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)
- Setting values that can be reused indefinitely. 