# First Playbook



Now lets write your first playbook. 

Playbooks are declarative pipelines automating a set of operations that should otherwise be performed by engineers. They are either built in a [**Visual Planner**](https://app.stackpulse.io/playbook/create) provided by StackPulse or edited via any IDE of your choice.

In this tutorial we will use **Microsoft Visual Studio Code** to show how to develop playbooks.



## Playbook Structure



Every playbook file begins with a "playbook header". Go ahead and click on  `first_playbook.yaml`{{open}}  to start editing.

Now click on the below to create the playbook:

<pre class="file" data-filename="first_playbook.yaml" data-target="replace">apiVersion: stackpulse.io/v1
kind: Playbook
metadata:
  name: first_playbook
  description: "First playbook created by a tutorial"
steps:
</pre>


As you can see, every playbook has an `apiVersion` and a `kind` stating that it is a playbook, as well as `metadata` section covering its name, description and other important elements that we will learn about in the future.
To learn more about playbooks, you can refer to [StackPulse Documentation](https://docs.stackpulse.io/playbooks/#playbook-structure)

The `name` is particularly important, as it must be **unique** in your _StackPulse account_, and you will be referring to the playbook by its `name` in different situations.

## Adding Steps

As we mentioned, playbooks are automating a set of operations that would otherwise be performed by people. Each automation pipeline consists of one or more *steps*, each replacing a singular operation performed by a human operator.




Go ahead, add the below step to your playbook:

<pre class="file" data-filename="first_playbook.yaml" data-target="append">  - id: echo_step
    name: us-docker.pkg.dev/stackpulse/public/utils/echo
    env:
      MESSAGE: "Hello, Playbooks World!"
</pre>

As you can see, every step also has a number of important parameters:
* `id` is an identifier of this particular step in the playbook. It can be used later to refer to certain findings / outputs that were provided by this step.
* `name` is an identifier of an operation that this step performs. In this case, as you can see, it is an image of a *docker container* provided by _StackPulse_ to perform an _echo_ operation. Naturally, same type of operation can be performed multiple times in course of a single playbook, albeit in different steps (i.e., steps with different `id`)
* `env` is a set of definitions for an _environment_ for the execution of this particular step. Think of them like of the _parameters_ that the step needs to perform its job. In this case, we are providing the message that the step needs to print.


