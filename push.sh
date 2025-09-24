#!/bin/bash

# Check if a commit message is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <commit-message> [branch-name]"
    exit 1
fi

# Set variables
COMMIT_MESSAGE="$1"
BRANCH_NAME="${2:-main}" # Default to 'main' if no branch name is provided

# Navigate to the repository
cd /Users/pvikram/Documents/Learning/TechDocs || exit

# Perform git operations
git add .
git commit -m "$(date): $COMMIT_MESSAGE"
git push origin "$BRANCH_NAME"