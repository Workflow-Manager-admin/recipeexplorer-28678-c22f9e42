#!/bin/bash
cd /home/kavia/workspace/code-generation/recipeexplorer-28678-c22f9e42/recipes_frontend_workspace/recipes_frontend
npx run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

