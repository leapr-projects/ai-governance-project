# Checkpoint 4 — Audit Trail Design

## Scenario
A regulator has just requested all records related to loan decisions made by 
FinSecure's AI system in the last 90 days. You need to make sure everything 
they need is being logged and can be retrieved quickly.

## Your Task
Design the audit trail framework below.

---

# FinSecure AI Audit Trail Framework
**System:** LLM Loan Decision Engine  
**Date:** [Your date]  
**Owner:** [Your name]

## 1. What Must Be Logged
For every loan decision, define what data must be captured:

| Data Point | Why It Must Be Logged | Retention Period |
|------------|----------------------|-----------------|
| Application ID | | |
| Decision (Approve/Reject) | | |
| Confidence score | | |
| Model version used | | |
| [Add 3 more] | | |
| | | |
| | | |

## 2. Where Logs Are Stored
- Primary storage: [Where?]
- Backup storage: [Where?]
- Access controls: [Who can view logs?]
- Encryption: [How are logs protected?]

## 3. Log Integrity
How will you ensure logs cannot be tampered with?

- Method: 
- Verification process:
- Responsible team:

## 4. Retrieval Process
A regulator asks for all decisions made on a specific date. 
How long will it take and what is the process?

- Retrieval time: [X hours/days]
- Process steps:
  1. 
  2. 
  3. 
- Format delivered: [PDF / CSV / Other]

## 5. Retention and Deletion Policy
- Logs kept for: [X years]
- Deletion process: 
- Legal hold procedure:

---

## Hints
- Reference GDPR Article 22 on automated decision making
- Think about immutable logs — blockchain or write-once storage
- Consider what happens if logs are needed for a lawsuit
- Think about the difference between operational logs and audit logs

## Completion Criteria
All 5 sections must be completed with specific, realistic answers.
