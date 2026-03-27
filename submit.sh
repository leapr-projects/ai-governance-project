#!/bin/bash

echo "Verifying your submission..."

FAILED=0

for FILE in GAP_ANALYSIS.md AI_ACCEPTABLE_USE_POLICY.md VENDOR_REVIEW.md BOARD_MEMO.md; do
  if grep -q "TODO" "$FILE"; then
    echo "❌ $FILE still has incomplete sections (TODO found)"
    FAILED=1
  else
    echo "✅ $FILE looks complete"
  fi
done

if [ $FAILED -eq 1 ]; then
  echo ""
  echo "Please complete all TODO sections before submitting."
  exit 1
fi

echo ""
echo "All files verified. Enter your Leapr credentials:"
read -p "Leapr User ID: " USER_ID
read -p "Your email address: " USER_EMAIL

echo ""
echo "Submitting for verification..."

gh workflow run issue-badge.yml \
  -f user_id="$USER_ID" \
  -f user_email="$USER_EMAIL"

echo ""
echo "✅ Submitted! Return to Leapr — your badge will appear within 60 seconds."
