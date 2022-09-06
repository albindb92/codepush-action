FROM node:10-slim

LABEL version="1.1.0"
LABEL repository="https://github.com/albindb92/codepush-action"
LABEL homepage="https://github.com/albindb92/codepush-action"
LABEL maintainer="Albin Daniel <albindb.92@gmail.com>"

LABEL com.github.actions.name="GitHub Action for Codepush"
LABEL com.github.actions.description="Wraps the appcenter CLI to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN npm install -g appcenter-cli

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
