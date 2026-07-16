# Cloud Migration Strategy

## Current State
- **On-Premise:** 3 data centers, 200 VMs, HP SAN Storage.
- **Applications:** 1 monolithic ERP (Oracle), 1 Custom CRM (.NET).
- **Cost:** $2.5M annual hardware/maintenance.

## Target State (18 Months)
- **Model:** Hybrid Cloud (Leaning towards AWS/Azure).
- **Goal:** Reduce data center footprint by 80%.
- **Migration Pattern:** "Lift and Shift" first, then "Refactor" high-priority apps.

## Key Considerations
- **Bandwidth:** Current MPLS lines cannot handle full data transfer in a reasonable time (data gravity).
- **Compliance:** Financial transaction data cannot leave the US/EU border.
- **Skills:** The current operations team has no experience with Kubernetes or serverless.

## Discussion Points
1. How do you handle the "Tape Backup" migration?
2. What is the strategy for application dependencies?
