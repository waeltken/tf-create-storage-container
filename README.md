# tf-create-storage-container

This repository contains a GitHub Actions workflow that call a terraform module in a new file based on storage container name input. The file is generated with a sequence number from the pipeline run. Then the file is committed to a new branch on the repository and a pull request is created to merge the changes into the main branch.