## Cypress Action

### Usage

Executes a cypress command.

```shell
action "Cypress" {
  uses = "wings-software/cypress@master"
  args = ["run", "--config video=false -s cypress/integration/**/*.spec.js"]
}
```
