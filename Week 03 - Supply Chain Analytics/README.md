# Week 3: Supply Chain Data Engineering & Logistics Dashboard

## Project Objective
This module focused on processing an international logistics history dataset containing 10,324 shipment records. The core workflow required building an automated Python ETL data cleaning structure to ingest complex data text anomalies, followed by building an operational Power BI Supply Chain Performance Dashboard.

---

## Python Data Engineering & Analysis Summary
Using Pandas data structures, unstructured text labels within functional numeric dimensions (such as Freight Costs and Unit Weights) were programmatically coerced into mathematical floating points[cite: 2]:
- **Muted Text Inconsistencies:** Custom cleaning functions mapped text instances like `"Freight Included in Commodity Cost"` or `"Invoiced Separately"` into safe logical markers[cite: 2].
- **Missing Value Controls:** Addressed missing data systematically: Weight gaps were filled with column medians, and missing insurance indicators were reset to $0 to preserve database calculation continuity[cite: 2].

### Key Insights Extracted from Python
1. **Logistical Mode Dominance:** **Air freight** serves as the primary mode of international logistics, executing **6,113 shipments** (~59.2% of organizational movement volume).
2. **Geographical Demand Core:** **South Africa** (1,406 shipments) and **Nigeria** (1,194 shipments) represent the dominant regional demand hubs, driving over 25% of absolute delivery tracking.
3. **Efficiency Metrics:** The global average delivery delay tracking stands at **-6.02 days**, indicating that logistics channels operate highly efficiently by beating scheduled target arrivals on average.
4. **Financial Concentration:** The **ARV (Antiretroviral)** product vertical represents the primary asset value segment, capturing **$1.41 Billion** of total inventory investment.
5. **Vendor Cost Anchor:** Logistics spending is heavily concentrated with vendor **"SCMS from RDC"**, accounting for a peak freight cost of **$34,854,520.36**.

---

## Power BI Executive Dashboard Blueprint
The dashboard layout follows a 5-second business scan principle[cite: 2]:
- **KPI Indicators:** Total Volume (10.3K Shipments), Total Freight ($68.82M), Global Average Delay (-6.02 Days), Total Cargo Value ($1.63B)[cite: 2].
- **Slicers Active:** Filter control panels for `Shipment Mode`, `Product Group`, and `Country` brand visibility.

### Dashboard Observations
1. **Air Charter Efficiency:** While standard Air freight achieves an average arrival margin of -3.76 days, **Air Charter** channels provide peak temporal performance, arriving an average of **19.04 days ahead** of client timelines.
2. **Ocean Freight Delays:** **Ocean cargo lines** represent the only channel introducing delays, averaging a positive slip page of **+5.87 days**, highlighting a clear area for logistical optimization.
3. **Asset Concentration Risk:** 86.8% of total item investments are concentrated entirely inside the ARV medication stream, creating a high supply-chain vulnerability to single-category disruptions.

---

## 💡 Strategic Business Recommendations
1. **Implement Ocean Route Contingencies:** Transition critical cargo lines currently assigned to Ocean routes (+5.87 average day delay) into synchronized intermodal Truck networks (-9.92 average day delay) to eliminate delivery delays.
2. **Consolidate Vendor Freight Levers:** Since vendor **"SCMS from RDC"** commands over 50% of global freight spending ($34.85M), corporate procurement should immediately leverage this volume to negotiate long-term container rate reductions.
