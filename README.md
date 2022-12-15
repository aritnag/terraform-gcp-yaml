
## Dynamic Functionality of Terraform to incorporate yaml and its values

This demonstrates the provisioning of a infrastructures using python terraform functions and also dynamically incorporating yaml in the terraform code.
You can use the remote backend as `gcs` or any other backends as described in the docs of terraform. If using `gcs` as is the case here. Do a

```bash
$ gcloud auth application-default login
```

before running 

```bash
$ terraform init
```

## Deploying the code : Changing the value inside "working_dir"

```bash
$ ./deploy-tf.py
```


## Removing the infrastructure

```bash
$ ./destroy-tf.py
```
