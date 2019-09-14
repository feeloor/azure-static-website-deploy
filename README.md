# GitHub Action to Upload to Azure Storage

> **⚠️ Note:** To use this action, you must have access to the [GitHub Actions](https://github.com/features/actions) feature.

This action is designed to use the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) to enable static website and upload a directory of your choice to your Azure Storage account.

## Usage

### Example

Place in a `.yml` file such as this one in your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions)

```yaml
name: Upload To Azure
on: push

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: feeloor/azure-static-website-deploy@master
        env:
          SOURCE_DIR: "./public"
          AZURE_SUBSCRIPTION_ID: "<azure-subscription-id>"
          AZURE_STORAGE_ACCOUNT_NAME: "<azure-storage-account-name>"
          AZURE_INDEX_DOCUMENT_NAME: "<index-document-name>"
          AZURE_ERROR_DOCUMENT_NAME: "<error-document-name>"
```

### Required Variables

| Key                          | Value                                                                                                                                                                                                                                                                                    | Type     | Required |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | -------- |
| `SOURCE_DIR`                 | The name of the directory you want to upload                                                                                                                                                                                                                                             | `env`    | **Yes**  |
| `AZURE_SUBSCRIPTION_ID`      | Your Azure Subscription ID.                                                                                                                                                                                                                                                              | `secret` | **Yes**  |
| `AZURE_STORAGE_ACCOUNT_NAME` | Your Azure Storage Account Name.                                                                                                                                                                                                                                                         | `secret` | **Yes**  |
| `AZURE_INDEX_DOCUMENT_NAME`  | The index document that you specify when you enable static website hosting, appears when users open the site and don't specify a specific file. [More Information Here](https://docs.microsoft.com/en-US/azure/storage/blobs/storage-blob-static-website#viewing-content)                | `env`    | **Yes**  |
| `AZURE_ERROR_DOCUMENT_NAME`  | If the server returns a 404 error, and you have not specified an error document when you enabled the website, then a default 404 page is returned to the user. [More Information Here](https://docs.microsoft.com/en-US/azure/storage/blobs/storage-blob-static-website#viewing-content) | `secret` | **No**   |

## License

This project is distributed under the [MIT license](LICENSE.md).
