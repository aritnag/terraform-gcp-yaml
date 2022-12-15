
## Dynamic Functionality of Terraform to incorporate yaml and its values

This demonstrates the provisioning of a infrastructures using python terraform functions and also dynamically incorporating yaml in the terraform code.
You can use the remote backend as `gcs` or any other backends as described in the docs of terraform. If using `gcs` as is the case here. Do a

```bash
$ gcloud auth application-default login
```


#### Contents of the files
1. gcs-bucket : It creates the storage bucket in gcp to store the terraform backend
2. iam-roles : Incorporates the yaml file inside the code and transform it to create iam_groups and binding for gcp
3. single-vm : Hardcoded value to create a single vm in the gcp environment


before running 

```bash
$ terraform init
```

### Deploying the code : Changing the value inside "working_dir"

```bash
$ ./deploy-tf.py
```


### Removing the infrastructure 

```bash
$ ./destroy-tf.py
```
