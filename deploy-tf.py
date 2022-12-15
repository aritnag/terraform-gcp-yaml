#!/usr/bin/env python3

from python_terraform import Terraform,IsFlagged

tf = Terraform(working_dir="single-vm" ,is_env_vars_included=True)
tf.plan(no_color=IsFlagged, refresh=False, capture_output=True)
approve = {"skip_plan": True,"capture_output":False}
return_code, stdout, stderr = tf.apply(**approve)