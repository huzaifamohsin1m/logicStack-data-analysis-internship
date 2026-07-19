# Week 4 Final Project: E-Commerce Funnel & Revenue Optimization Analysis

## Project Objective
This capstone project focuses on analyzing user behavior, tracking multi-stage conversion funnels, identifying structural drop-off points, and mapping global revenue distribution for a digital business platform using SQL (MySQL) and Power BI.

## Tech Stack & Tools
* **Database Engine:** MySQL (Data exploration, funnel aggregation, CTE analysis)
* **Business Intelligence:** Power BI Desktop (DAX engineering, interactive visualizations)

---

## Core Business & Funnel Insights

### 5 Key SQL Insights
1. **Perfect Single-Session Baseline:** The dataset tracks 21,409 raw event logs across exactly 10,000 unique users and 10,000 unique sessions, providing a clean baseline for behavior analysis.
2. **Macro Funnel Scale:** Raw traffic scales down linearly across the four primary stages: Browse (10,000) ➔ Add to Cart (6,949) ➔ Checkout (3,456) ➔ Purchase (1,004).
3. **The Absolute Traffic Leak:** The single largest loss in absolute customer volume happens between **Add to Cart** and **Checkout**, where **3,493 users** abandon the funnel.
4. **The Percentage Checkout Trap:** The **Checkout ➔ Purchase** step suffers from the worst conversion velocity, experiencing a staggering **70.95% drop-off rate**. Only 29.05% of users who initiate checkout actually buy.
5. **Baseline Conversion Benchmarking:** The end-to-end conversion rate of the entire platform (Browse ➔ Purchase) sits at exactly **10.04%**.

### 5 Dashboard & Dimensional Insights
1. **Primary Revenue Engine:** **Google Ads** leads all acquisition channels, driving **$73,862.32** in total revenue.
2. **Balanced Marketing Ecosystem:** Email ($69.12K) and Social Media ($68.36K) track closely behind Google Ads, demonstrating a highly stable marketing network.
3. **Geographic Performance Anchor:** The **South Region** dominates the regional landscape, generating a market-leading **$77,421.45** in sales.
4. **Hardware Performance Standard:** **Desktop** hardware serves as the financial anchor of the platform, bringing in **$98,471.83** in absolute revenue.
5. **Mobile User Experience Friction:** Despite healthy traffic volumes (3,263 browsers), **Mobile** suffers from the worst conversion rate (**9.47%**) and lowest revenue contribution ($84,231.10), flagging a clear responsive-design issue.

---

## Strategic Business Recommendations

1. **Optimize the Final Checkout Interface Layout**
   With a 70.95% drop-off rate at the final step, reducing checkout friction is the top priority. Implementing guest checkouts, 1-click purchasing options, and visible trust badges can save a significant portion of the 2,452 users dropping out at the finish line.

2. **Deploy Automated Cart-Abandonment Workflows**
   To recover the 3,493 users who add items to their carts but never initiate checkout, implement triggered retargeting email and push notification campaigns within a 1-to-4 hour window, offering a limited-time incentive to finalize intent.

3. **Prioritize Mobile Layout UI/UX Optimization**
   Address the mobile conversion lag (9.47% Mobile vs. 10.58% Desktop) by redesigning the mobile cart button layout, optimizing asset load times, and streamlining mobile payment integrations (such as Apple Pay or Google Pay) to unlock latent mobile revenue.
