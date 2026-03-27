#!/bin/bash

echo "Verifying your submission..."

if [ ! -f "Risk_Assessment.md" ] || [ ! -s "Risk_Assessment.md" ]; then
  echo "❌ Risk_Assessment.md is missing or empty. Please complete it before submitting."
  exit 1
fi

echo "✅ Files verified."
echo ""
echo "Enter your Leapr credentials to receive your badge:"
read -p "Leapr User ID: " USER_ID
read -p "Your email address: " USER_EMAIL

echo ""
echo "Submitting for verification..."

gh workflow run issue-badge.yml \
  -f user_id="$USER_ID" \
  -f user_email="$USER_EMAIL"

echo ""
echo "✅ Submitted! Return to Leapr — your badge will appear within 60 seconds."
