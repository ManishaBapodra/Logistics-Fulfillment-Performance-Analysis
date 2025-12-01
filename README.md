# TheLook E-Commerce - Logistics & Fulfillment Performance Analysis  
### Built with **BigQuery SQL Views + Tableau**

This project showcases end-to-end data analysis executed on the **TheLook E-Commerce** dataset (Google BigQuery Public Data).  
It demonstrates a data analytics skills — SQL, data cleaning, KPI modeling, visualization, and insight generation.

---

## Project Objective

To analyze the **logistics and fulfillment performance** of an e-commerce business by measuring:

- Average Processing Time  
- Average Shipping Time  
- Average Fulfillment Time   
- Return Rates
- Monthly Fulfillment Trend
- Regional Delivery Delays  
- Distribution Center Efficiency  

All metrics are visualized in a professional Tableau dashboard.

---

## Key Skills Demonstrated

- **Advanced SQL** (CTEs, calculated fields, cleaning timestamps, derived KPIs)
- **Data Modeling** (clean views, validated pipelines)
- **Data Quality Handling** (timestamp validation, filtering, anomaly detection)
- **Tableau Dashboard Design**
- **Insights & Recommendations**
- **Cloud Analytics (BigQuery)**

---

## Data Cleaning & Preparation

To ensure accurate logistics analysis, raw order data was cleaned to create the view `order_items_logistics_clean`.

### Data Volume Summary
* **Raw Records:** 181,382
* **Cleaned Records:** 44,759
* **Retention Rate:** ~24.7% (Focusing only on completed, valid lifecycles)

### Transformation Logic
The data pipeline applies the following logic to ensure data quality:

| **1. Filtering** | **Exclude Incomplete Statuses** | Removed `Cancelled` and `Processing` orders to focus on completed logistics cycles only. |
| **2. Logic Check** | **Fix "Time Travel" Errors** | Removed invalid rows where `shipped_at < created_at` or `delivered_at < shipped_at`. |
| **3. Standardization** | **Normalize Locations** | Standardized `country`: mapped "España" → "Spain" |

---

## Final Dashboard Features

### KPI Tiles  
- Avg Processing Time  
- Avg Shipping Time  
- Avg Fulfillment Time  
- On-Time Delivery Rate  
- Avg Return Rate  

### Visual Analysis  
- Fulfillment Trend (Line Chart)  
- Distribution Center Performance (Bar Chart)  
- Delivery Delay Rate by Region (Heatmap/Table)


## How to Reproduce the Project

### 1. Connect to BigQuery  
Dataset:  
bigquery-public-data.thelook_ecommerce


### 2. Create SQL Views  
Inside the `sql/` folder you will find:

- `order_items_logistics_clean`
- Regional delay view
- Other KPIs are calculated directly in Tableau using the calculated fields in Tableau

### 3. Connect Tableau to BigQuery  
Import each view as a **separate data source**.

### 4. Build the Dashboard  
Follow the layout described in `project_overview.md`
**project_overview.md has not been uploaded yet. I’m working on a few improvements and will upload it shortly.**

---

## Example KPIs  
(All based on cleaned data)

- Average fulfillment time remains under the SLA (3.97 days vs SLA 5 days).  
- On-time delivery rate is 70.73% — room for improvement.  
- EU regions show high delay rates (Austria 66.7%, Belgium 50%).  
- Return rate is 28.63%, above typical benchmarks.

See the full interpretation in insights_summary.md

---

## Contact  
If you’d like to collaborate, improve the analysis, or explore extensions, feel free to reach out 
