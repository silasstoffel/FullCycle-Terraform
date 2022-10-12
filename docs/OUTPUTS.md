[Go Back](../README.md)
___
# Outputs

[Commit](https://github.com/silasstoffel/FullCycle-Terraform/commit/e2c38b4ed25c1b7025c21c5f58d63f153c72d724)

Apply change and check the output on your terminal
```shell
➜ terraform apply                                    
local_file.heroes: Refreshing state... [id=230c0f933fff1361e0e594d577d8695734fba9e2]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # local_file.heroes must be replaced
-/+ resource "local_file" "heroes" {
      ~ content              = "Batman; SuperMan; Flash; IronMan; SpiderMan" -> "Batman; SuperMan; Flash; IronMan; SpiderMan; AquaMan" # forces replacement
      ~ id                   = "230c0f933fff1361e0e594d577d8695734fba9e2" -> (known after apply)
        # (3 unchanged attributes hidden)
    }

Plan: 1 to add, 0 to change, 1 to destroy.

Changes to Outputs:
  + heroes_filename_content = "Batman; SuperMan; Flash; IronMan; SpiderMan; AquaMan"
  + heroes_filename_id      = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

local_file.heroes: Destroying... [id=230c0f933fff1361e0e594d577d8695734fba9e2]
local_file.heroes: Destruction complete after 0s
local_file.heroes: Creating...
local_file.heroes: Creation complete after 0s [id=610fe312bfc69a8832847e4710493989d63f50af]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.

Outputs:

heroes_filename_content = "Batman; SuperMan; Flash; IronMan; SpiderMan; AquaMan"
heroes_filename_id = "610fe312bfc69a8832847e4710493989d63f50af"
```

___
[Go Back](../README.md)
