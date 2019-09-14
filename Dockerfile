FROM microsoft/azure-cli

LABEL "com.github.actions.name"="Deploy repo to Azure Storage"
LABEL "com.github.actions.description"="Deploys code to Azure Storage configured with Static Website"
LABEL "com.github.actions.icon"="gear"
LABEL "com.github.actions.color"="red"
LABEL "repository"="https://github.com/feeloor/azure-static-website-deploy"
LABEL "homepage"="https://github.com/feeloor/azure-static-website-deploy"
LABEL "maintainer"="Felix Khoi <feeloor@github.com>"

# This is what GitHub will run
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
