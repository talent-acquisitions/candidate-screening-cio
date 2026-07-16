# Modernization Roadmap

## Current Architecture
- **Monolith:** Oracle ERP, DB on Solaris.
- **Integration:** Point-to-point (Spaghetti) ESB.
- **Deployment:** Bi-annual releases (Waterfall).

## Future Architecture
- **Microservices:** Domain-driven design (DDD).
- **API Gateway:** Edge services for external partners.
- **PaaS:** Leveraging cloud managed services (RDS, AKS/EKS).

## Phases
1.  **Phase 1 (Months 1-6):** Containerize the existing monolith (A lift of the *container*).
2.  **Phase 2 (Months 7-12):** Break out the "Authentication" and "Catalog" services.
3.  **Phase 3 (Months 13-18):** Decompose the financial ledger.

## Constraints
- **Downtime:** The business cannot go offline during month-end close.
- **Data:** The database is 10TB. Migration requires careful handling.
