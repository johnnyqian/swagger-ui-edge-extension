# swagger-ui-edge-extension

Packaging [swagger-ui](https://github.com/swagger-api/swagger-ui) as a Microsoft Edge browser extension. Inspired by [swagger-ui-chrome](https://github.com/jiayx/swagger-ui-chrome).

This extension allows you to view API documentation directly in your Edge browser without needing to host it on a server. It uses the Swagger UI library to render the API documentation from an OpenAPI compatible JSON file.

## Usage

1. Install via [Microsoft Edge Add-ons Store](https://microsoftedge.microsoft.com/addons/detail/flhdcmeblokfholgboncnjfpdingljac)
2. Locally for development:
    - git clone the repository
    - Run ./update.sh
    - Open Microsoft Edge Extensions(edge://extensions) page, enable developer mode and click "Load unpacked" , then select the project root folder
