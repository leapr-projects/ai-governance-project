#!/bin/bash

echo "🔍 Checking your completed work..."

PASS=true

# Check checkpoint 1
if grep -q "| 1 |  |" checkpoint-1-risk-assessment.md; then
  echo "❌ Checkpoint 1 incomplete — please fill in your risk matrix"
  PASS=false
else
  echo "✅ Checkpoint 1 complete"
fi

# Check checkpoint 2
if grep -q "\[Write 2-3 sentences" checkpoint-2-policy.md; then
  echo "❌ Checkpoint 2 incomplete — please complete your policy"
  PASS=false
else
  echo "✅ Checkpoint 2 complete"
fi

# Check checkpoint 3
if grep -q "Step 1:  " checkpoint-3-oversight.md; then
  echo "❌ Checkpoint 3 incomplete — please complete your oversight protocol"
  PASS=false
else
  echo "✅ Checkpoint 3 complete"
fi

# Check checkpoint 4
if grep -q "\[Where?\]" checkpoint-4-audit.md; then
  echo "❌ Checkpoint 4 incomplete — please complete your audit framework"
  PASS=false
else
  echo "✅ Checkpoint 4 complete"
fi

if [ "$PASS" = true ]; then
  echo ""
  echo "🎉 All checkpoints complete! Submitting your project..."
  
  read -p "Enter your full name: " USER_NAME
  read -p "Enter your email address: " USER_EMAIL
  read -p "Enter your Leapr auth token (find it in Leapr app settings): " AUTH_TOKEN

  RESPONSE=$(curl -s -X POST "https://rlefumadvzpijgxjogoo.supabase.co/functions/v1/issue-badge" \
    -H "Authorization: Bearer $AUTH_TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"name\": \"$USER_NAME\", \"email\": \"$USER_EMAIL\"}")

  SUCCESS=$(echo $RESPONSE | grep -o '"success":true')

  if [ -n "$SUCCESS" ]; then
    echo ""
    echo "✅ Your Leapr AI Governance Practitioner badge is on its way!"
    echo "📧 Check your email at $USER_EMAIL"
    echo "🔗 Add it directly to your LinkedIn profile."
  else
    echo ""
    echo "❌ Something went wrong. Please contact support@leapr.co"
    echo "Error: $RESPONSE"
  fi
else
  echo ""
  echo "Please complete the remaining checkpoints and run this script again."
fi
