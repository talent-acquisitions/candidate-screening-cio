Ransomware Incident — Critical Steps (First 60 Minutes)

Incident context: 2:15 PM — IDS flagged anomalous outbound traffic from Finance; files actively encrypting on Server X.

0–5 min: Activate & Assemble
Formally activate the IRP (activation criteria met: ransomware detected).
Assemble the response team: CISO leads investigation, Legal on standby, PR on standby, CIO (me) coordinating and holding shutdown-approval authority.
Open an incident bridge/war room — single channel for all decisions, no side conversations.
5–15 min: Isolate
Segment Server X and the Finance department subnet immediately (network-level isolation, not power-off — powering off risks losing volatile memory forensics and can trigger destructive payloads).
Disable network access for affected user accounts in Finance; do not delete or reset yet (needed for investigation).
Confirm the isolation didn't cut off backup/logging infrastructure — those need to stay reachable for the next steps.
15–30 min: Identify & Communicate (parallel tracks)
CISO/SOC: Trace the entry vector from the IDS alert — phishing, exposed RDP, compromised credentials — and check for lateral movement beyond Server X.
CIO: Per the IRP, notify the CEO and Head of Legal immediately. Give facts only (what's confirmed, what's still being investigated) — no speculation on scope yet.
Legal: Begin assessing whether this triggers breach-notification obligations (PII exposure risk from Finance systems is high-probability given the department affected).
30–45 min: Contain
Block identified malicious IPs/domains (C2 traffic) at the firewall/edge.
Force credential resets for any confirmed-compromised accounts.
Critical check: verify backups are immutable/air-gapped and were not also touched by the encryption — this determines whether restore is even viable later and shapes the ransom-payment conversation.
45–60 min: Preserve Evidence & Prepare Next Phase
Take forensic snapshots/images of affected systems before any remediation or cleanup — this is a legal and insurance requirement, and it's the last easy window to do it.
CIO decision point: escalate to a broader operational shutdown only if lateral spread is confirmed beyond Finance — don't shut down more than the evidence supports.
PR prepares an internal holding statement only (no external release) — external comms wait for Legal's breach-notification assessment.
Explicitly defer: ransom payment decision, law enforcement engagement, and public disclosure — these are hour-2+ decisions requiring full executive/Legal alignment, not first-60-minute actions.
What I'm deliberately not doing in the first hour

Not restoring from backup yet (evidence not preserved), not making public statements, not deciding on ransom payment — all of these require information this phase is still gathering