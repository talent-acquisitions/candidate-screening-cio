AWS vs. Azure — Lean

Note: strategy/vendor-assessment.md was not provided, so this is based on general enterprise decision criteria rather than the company's specific comparison matrix — treat as directional, not final.

Lean: Azure, on balance — but it's close, and I'd want the actual vendor-assessment doc before committing.

Why: A 500-employee legacy enterprise almost always has an existing Microsoft footprint (AD, M365, on-prem Windows Server) and an active Microsoft licensing relationship — which is directly relevant, since the budget strategy (Task 1) already leans on renegotiating that Microsoft EA. Azure Arc's hybrid tooling also fits the 18-month phased migration better, since large chunks of the estate will run on-prem alongside cloud for most of that window.

The honest counterpoint: AWS has the deeper managed-service bench for Oracle workloads specifically (RDS for Oracle, broader third-party ecosystem) and is generally the safer default if the goal is avoiding lock-in with a single vendor across both licensing and infrastructure. If the vendor-assessment doc weights cloud-native maturity or avoiding vendor con