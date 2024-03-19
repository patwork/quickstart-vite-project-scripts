# quickstart-vite-project-scripts

scripts to help you pre-configure your vite project

| Script | Settings |
| ------ | -------- |
| 0100-create.sh     | Create Vite App (react-ts) |
| 0110-init.sh       | Husky |
| 0120-configs.sh    | Editorconfig |
| 0130-prettier.sh   | Prettier |
| 0140-eslint.sh     | Eslint (TypeScript & Prettier) |
| 0200-cleanup.sh    | General cleanup and formatting |
| 1000-bootstrap.sh  | General cleanup and formatting |

default settings

- pnpm
- react
- typescript

pnpm scripts

```
"dev": "vite",
"build": "tsc && vite build",
"lint": "eslint .",
"preview": "vite preview",
"prepare": "husky",
"format": "prettier --check .",
"format:fix": "prettier --write ."
```

devDependencies

- eslint
- eslint-config-prettier
- eslint-plugin-jsx-a11y
- eslint-plugin-promise
- eslint-plugin-react
- eslint-plugin-react-hooks
- eslint-plugin-react-refresh
- husky
- prettier
- prettier-plugin-organize-imports
- @typescript-eslint/eslint-plugin
- @typescript-eslint/parser
