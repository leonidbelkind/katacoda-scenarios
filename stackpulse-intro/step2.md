# First Playbook



Now lets write your first playbook. 

laybooks are declarative pipelines automating a set of operations that should otherwise be performed by engineers. They are either built in a [**Visual Planner**](https://app.stackpulse.io/playbook/create) provided by StackPulse or edited via any IDE of your choice.

In this tutorial we will use **Microsoft Visual Studio Code** to show how to develop playbooks.



## Playbook Structure



Every playbook file begins with a "playbook header". Go ahead and click on the below example to start creating a playbook:


<pre class="file" data-filename="first_playbook.yaml" data-target="replace">
apiVersion: stackpulse.io/v1
kind: Playbook
metadata:
  name: first_playbook
  description: "First playbook created by a tutorial"
steps:
</pre>
