# Applying and Executing a Playbook



Now we will "apply" the newly created playbook to our _StackPulse_ account and trigger its execution. Please return to the "Terminal" tab in your environment.



## Applying your playbook into your StackPulse account



To apply (upload) your playbook into your StackPulse account, please run:

`./stackpulse apply playbook -f example/first_playbook.yaml`{{execute}}

If the operation is successful, a message similar to the below (albeit with a different ID) should be shown:
```bash
created "first_playbook" id="b351a757-92cb-44d0-942e-36828f8144ec"
```

## Executing a playbook

To trigger an execution of your playbook, please run:
`./stackpulse run playbook first_playbook`{{execute}}

If the operation is successful, you will see an output similar to the below:

```bash
Running Playbook first_playbook

Execution: https://app.stackpulse.io/execution/d5b69ca7-d935-4be4-ba78-d87c09d044fe
```

Do a `Command+Click`/`Ctrl+Click` on the URL to see the execution results.