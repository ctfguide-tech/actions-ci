GitHub Actions
-------
There are two steps in the workflow:

Step 1: Plan
-------
1. Pull Request is made.
2. We could first do a security check (you couldconsider running Snyk IaC code scanning first)
3. Using the AWS credentials stored as repo secrets, run terraform init and plan<br>
Step 2: Apply
-------
1. Includes the apply step to change infrastructure<br>
Copy the two workflow files into ```.github/workflows```<br>