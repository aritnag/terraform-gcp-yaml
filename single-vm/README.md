## Single node VM

This demonstrates the provisioning of a single compute VM(`g1-small`) with centos7 (these can be changed inside the `variables.tf` file) in GCP inside a custom created VPC with firewall rules attached to it.

You can use the remote backend as `gcs` or any other backends as described in the docs of terraform. If using `gcs` as is the case here. Do a

```bash
$ gcloud auth application-default login
```

before running 

```bash
$ terraform init
```

## Running it

```bash
$ ./deploy-tf.py
```
