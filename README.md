# tf-module-foreach

# Repository for learning Terraform OSS
This repository has been created only for learning purposes to try the `for_each` meta-argument in Terraform OSS and calls a module multiple times within a `for_each`.

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/tf-module-foreach.git
```

- Go to the directory where the repo is stored:
```shell
cd tf-module-foreach
```


- Run `terraform init`, to download any external dependency
```shell
terraform init
```


This is the output of initializing the Terraform code:
```shell
Initializing modules...

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/null...
- Installing hashicorp/null v3.1.0...
- Installed hashicorp/null v3.1.0 (self-signed, key ID 34365D9472D7468F)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/plugins/signing.html

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes with Terraform
```shell
terraform apply
```

This is the output for applying the changes:
```shell
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.daniela["Ana"].null_resource.null will be created
  + resource "null_resource" "null" {
      + id = (known after apply)
    }

  # module.daniela["Catalina"].null_resource.null will be created
  + resource "null_resource" "null" {
      + id = (known after apply)
    }

  # module.daniela["Cristina"].null_resource.null will be created
  + resource "null_resource" "null" {
      + id = (known after apply)
    }

  # module.daniela["Daniela"].null_resource.null will be created
  + resource "null_resource" "null" {
      + id = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.daniela["Catalina"].null_resource.null: Creating...
module.daniela["Daniela"].null_resource.null: Creating...
module.daniela["Cristina"].null_resource.null: Creating...
module.daniela["Ana"].null_resource.null: Creating...
module.daniela["Cristina"].null_resource.null: Creation complete after 0s [id=1624008977783038860]
module.daniela["Catalina"].null_resource.null: Creation complete after 0s [id=6751221064310219088]
module.daniela["Daniela"].null_resource.null: Creation complete after 0s [id=5838049710569844360]
module.daniela["Ana"].null_resource.null: Creation complete after 0s [id=1461734042759519258]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
```

- Destroy the resources 
```shell
terraform destroy

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.daniela["Ana"].null_resource.null will be destroyed
  - resource "null_resource" "null" {
      - id = "1461734042759519258" -> null
    }

  # module.daniela["Catalina"].null_resource.null will be destroyed
  - resource "null_resource" "null" {
      - id = "6751221064310219088" -> null
    }

  # module.daniela["Cristina"].null_resource.null will be destroyed
  - resource "null_resource" "null" {
      - id = "1624008977783038860" -> null
    }

  # module.daniela["Daniela"].null_resource.null will be destroyed
  - resource "null_resource" "null" {
      - id = "5838049710569844360" -> null
    }

Plan: 0 to add, 0 to change, 4 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

module.daniela["Daniela"].null_resource.null: Destroying... [id=5838049710569844360]
module.daniela["Cristina"].null_resource.null: Destroying... [id=1624008977783038860]
module.daniela["Catalina"].null_resource.null: Destroying... [id=6751221064310219088]
module.daniela["Ana"].null_resource.null: Destroying... [id=1461734042759519258]
module.daniela["Daniela"].null_resource.null: Destruction complete after 0s
module.daniela["Cristina"].null_resource.null: Destruction complete after 0s
module.daniela["Catalina"].null_resource.null: Destruction complete after 0s
module.daniela["Ana"].null_resource.null: Destruction complete after 0s

Destroy complete! Resources: 4 destroyed.
```

## Reference Documentation

- [Terraform for_each meta-argument](https://www.terraform.io/language/meta-arguments/for_each)

- [Module for_each](https://github.com/hashicorp/terraform/tree/guide-v0.13-beta/module-repetition)