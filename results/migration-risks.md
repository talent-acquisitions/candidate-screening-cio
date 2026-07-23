Monolith → Microservices: Top 2 Risks & Mitigations
Risk 1: Data Integrity Failure During Financial Ledger Decomposition

Splitting a single ACID-compliant 10TB Oracle database into service-owned datastores is the highest-risk part of this roadmap — and it's scheduled last (Phase 3, months 13–18) for exactly that reason. The danger is concrete: distributed transactions across services are inherently harder to keep consistent than a single-database transaction, and the explicit constraint that the business cannot go offline during month-end close means any consistency gap in the ledger directly threatens a business-critical process, not just a technical one.

Mitigation:

Keep the ledger inside the monolith until Phase 3 as planned — don't let scope creep pull it forward.
Use the strangler fig pattern with dual-write + Change Data Capture (CDC) reconciliation during cutover, rather than a hard switchover.
Replace any planned two-phase-commit approach with the saga pattern for cross-service transactions, since 2PC doesn't scale well and creates its own availability risk.
Run the new ledger service in shadow mode (processing real traffic, output compared against the monolith) for at least one full month-end close cycle before cutover — schedule the actual cutover window explicitly outside close periods.
Risk 2: Skills Gap Creating a "Distributed Monolith"

The team's operational background is Solaris/on-prem, and the target state (DDD, containers, API gateway, PaaS-managed services) requires a different skill set entirely. The real failure mode here isn't "the migration fails" — it's that it technically succeeds but creates more operational complexity than the monolith it replaced: more services to monitor, secure, and deploy, without the DevOps/observability maturity to manage them. That turns a modernization effort into a net slowdown.

Mitigation:

Treat Phase 1 (containerizing the monolith) as the deliberate training ground for the team, not just a technical lift — pair it with hiring/upskilling in SRE and cloud-native operations before Phase 2 decomposition begins.
Build the CI/CD and observability platform (golden path) before splitting out services, so Authentication and Catalog (Phase 2) launch onto a platform that already has monitoring, tracing, and deployment automation in place.
Enforce clear bounded contexts and API contracts (per the DDD approach already planned) to prevent the "spaghetti ESB" problem from simply re-emerging in distributed form.
Common thread

Both risks share the same mitigation principle: don't accelerate past the sequencing already built into the roadmap. The 18-month phasing (containerize → peripheral services → core ledger) exists specifically to build technical and organizational capability before the highest-stakes decomposition — the plan is sound as long as we resist pressure to compress it.