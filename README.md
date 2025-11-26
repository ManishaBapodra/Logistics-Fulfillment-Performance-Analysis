# 🚚 TheLook E-Commerce — Logistics & Fulfillment Performance Analysis  
### Built with **BigQuery SQL Views + Tableau**

This project showcases end-to-end data analysis executed on the **TheLook E-Commerce** dataset (Google BigQuery Public Data).  
It demonstrates real data analytics skills — SQL, data cleaning, KPI modeling, visualization, and insight generation.

---

## 📍 Project Objective

To analyze the **logistics and fulfillment performance** of an e-commerce business by measuring:

- Processing Time  
- Shipping Time  
- Total Fulfillment Time  
- SLA Compliance  
- Return Rates  
- Regional Delivery Delays  
- Distribution Center Efficiency  

All metrics are visualized in a professional Tableau dashboard.

---

## 🧠 Key Skills Demonstrated

- **Advanced SQL** (CTEs, calculated fields, cleaning timestamps, derived KPIs)
- **Data Modeling** (clean views, validated pipelines)
- **Data Quality Handling** (timestamp validation, filtering, anomaly detection)
- **Tableau Dashboard Design**
- **Insights & Recommendations**
- **Cloud Analytics (BigQuery)**

---

## 📊 Final Dashboard Features

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


## 🛠️ How to Reproduce the Project

### 1. Connect to BigQuery  
Dataset:  
bigquery-public-data.thelook_ecommerce


### 2. Create SQL Views  
Inside the `sql/` folder you will find:

- `order_items_logistics_clean`
- KPI calculation views
- Regional delay view
- Distribution center performance view

### 3. Connect Tableau to BigQuery  
Import each view as a **separate data source**.

### 4. Build the Dashboard  
Follow the layout described in `project_overview.md`.

---

## 📈 Example KPIs  
(All based on cleaned data)

| Metric | Value |
|-------|--------|
| Avg Processing Time | 34.54 hours |
| Avg Shipping Time | 2.487 days |
| Avg Fulfillment Time | 3.947 days |
| On-Time Delivery | 71.6% |
| Return Rate | 10.1% |

(See full interpretation in `insights_summary.md`.)

---

## 📬 Contact  
If you’d like to collaborate, improve the analysis, or explore extensions, feel free to reach out.
