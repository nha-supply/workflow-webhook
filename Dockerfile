FROM alpine

LABEL "name"="bash"
LABEL "repository"="https://github.com/distributhor/workflow-webhook"
LABEL "version"="1.0.0"

LABEL com.github.actions.name="Workflow Webhook DB Dev Bot"
LABEL com.github.actions.description="An action that will send a webhook to the dbdev bot"
LABEL com.github.actions.icon="database"
LABEL com.github.actions.color="purple"

RUN apk add --no-cache bash curl openssl xxd jq

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
