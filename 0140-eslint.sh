#!/bin/bash

. "$(dirname -- "$0")/0000.sh" go

# install
pnpm install -D \
	@typescript-eslint/parser@latest \
	@typescript-eslint/eslint-plugin@latest \
	eslint-plugin-promise@latest \
	eslint-plugin-react@latest \
	eslint-plugin-react-hooks@latest \
	eslint-plugin-react-refresh@latest \
	eslint-plugin-jsx-a11y@latest \
	eslint-config-prettier@latest

# config
echo "module.exports = {
  root: true,
  env: { browser: true, es2020: true },
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/recommended-type-checked',
    'plugin:@typescript-eslint/stylistic-type-checked',
    'plugin:promise/recommended',
    'plugin:react/recommended',
    'plugin:react/jsx-runtime',
    'plugin:react-hooks/recommended',
    'plugin:jsx-a11y/recommended',
    'prettier',
  ],
  ignorePatterns: ['dist', '.eslintrc.cjs'],
  parser: '@typescript-eslint/parser',
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
    project: ['./tsconfig.json', './tsconfig.node.json'],
    tsconfigRootDir: __dirname,
  },
  plugins: ['react-refresh'],
  rules: {
    'react-refresh/only-export-components': [
      'warn',
      { allowConstantExport: true },
    ],
  },
  settings: {
    react: {
      version: 'detect',
    },
  },
};" > .eslintrc.cjs

# Commit
commit_all_changes "Quickstart: Eslint (TypeScript & Prettier)"

