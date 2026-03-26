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
  echo "🎉 Congratulations! All checkpoints complete."
  echo "Your submission is being processed..."
  echo "You will receive your Leapr AI Governance badge by email shortly."
else
  echo ""
  echo "Please complete the remaining checkpoints and run this script again."
fi
