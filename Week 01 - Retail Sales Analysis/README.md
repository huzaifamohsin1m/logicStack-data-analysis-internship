# Week 1: Retail Sales Data Cleaning & Descriptive Analysis

## Objective
The primary objective of this module was to take the raw, unstructured `retail_sales_dataset.csv` file (1,000 entries) and execute standard data engineering cleaning practices, build verification logic to check data quality, calculate baseline performance metrics, and translate numbers into clear business observations.

## Data Engineering & Quality Controls
To ensure absolute corporate data validity, the following verification operations were executed within the spreadsheet:
- **Range-to-Table Conversion:** Bound the raw rows into a structural table layer to sustain dynamic references.
- **Null Value & Duplicate Sweeps:** Verified using `=COUNTBLANK()` and deduplication tools. Total empty/duplicate rows identified = `0`.
- **Logic Validation:** Appended a `Calculated Total` (`Quantity × Price per Unit`) and cross-checked it against the dataset's native `Total Amount` using `=IF(Calculated_Total = Total_Amount, "Correct", "Check")`. The dataset achieved a **100% logical match accuracy** across all 1,000 rows.

## High-Level Executive KPIs
- **Total Revenue:** $456,000.00
- **Average Transaction Value:** $456.00
- **Total Units Sold:** 2,514 units
- **Total Transactions logged:** 1,000 rows
- **Average Customer Age:** 41.39 Years

## Segmented Breakdown & Descriptive Insights

### A. Performance by Product Category
- **Beauty:** Total Sales: $143,515.00 | Total Quantity Sold: 771
- **Clothing:** Total Sales: $155,580.00 | Total Quantity Sold: 894
- **Electronics:** Total Sales: $156,905.00 | Total Quantity Sold: 849

### B. Revenue Generation by Consumer Gender
- **Female:** $232,840.00 (51.06% Share)
- **Male:** $223,160.00 (48.94% Share)

### C. Target Demographics (Bonus Analysis Bracket)
- **Young Adult (18-25):** $84,550.00
- **Adult (26-40):** $144,345.00
- **Senior Adult (41-60):** $193,880.00 (Dominant Market Segment at 42.52%)
- **Older Customer (Above 60):** $33,225.00
