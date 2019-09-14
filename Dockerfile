FROM microsoft/azure-cli

LABEL "com.github.actions.name"="Deploy repo to Azure Storage"
LABEL "com.github.actions.description"="Deploys code to Azure Storage and enables Static Website"
LABEL "com.github.actions.icon"="gear"
LABEL "com.github.actions.color"="red"
LABEL "repository"="https://github.com/feeloor/azure-static-website-deploy"
LABEL "homepage"="https://github.com/feeloor/azure-static-website-deploy"
LABEL "maintainer"="Felix Khoi <feeloor@github.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
