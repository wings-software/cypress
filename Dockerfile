FROM cypress/included:3.5.0

LABEL "name"="cypress"
LABEL "maintainer"="Tan Nhu <tan@harness.io>"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="Cypress.io for GitHub Actions"
LABEL "com.github.actions.description"="Run a Cypress test in an Action"
LABEL "com.github.actions.icon"="shield"
LABEL "com.github.actions.color"="gray-dark"

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN npm install cypress --global
ENTRYPOINT ["/entrypoint.sh"]
