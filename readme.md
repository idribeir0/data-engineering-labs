# Data Engineering Labs

This repository is a curated collection of practical exercises, experiments, and technical prototypes focused on strengthening core skills in modern Data Engineering and Analytical Engineering.

All content follows global engineering standards used by companies such as Snowflake, Uber, Databricks, Airbnb, and Amazon.

The goal is to maintain a clean, professional, English-based portfolio with reproducible workflows and real engineering patterns.

---

## Repository Structure

```
data-engineering-labs/
│── sql/
│   └── window-functions/
│       ├── row_number.sql
│       ├── lag_lead.sql
│       └── rank_dense_rank.sql
│
│── spark/ # Spark & Databricks labs (coming soon)
│── dbt/ # dbt models, staging, marts, tests
│── cloud/ # Cloud engineering labs (AWS/GCP/Azure)
│── pipelines/ # Batch and streaming pipelines
│── README.md
```

---

## Purpose

This repository is designed to:

- Build strong fundamentals in SQL, data modeling, and analytical engineering  
- Practice interview-level problem solving  
- Apply patterns from the modern data stack (ELT, Lakehouse, mart modeling, etc.)  
- Develop an engineering-oriented mindset aligned with international expectations  
- Maintain production-like organization, versioning, and documentation  

---

## Current Modules

### SQL Window Functions  
Path: `sql/window-functions/`

Covers:

- ROW_NUMBER  
- RANK  
- DENSE_RANK  
- LAG  
- LEAD  
- Window partitioning and ordering  

Use cases include time-series analysis, segmentation, performance ranking, and KPI modeling.  
Scripts are compatible with Snowflake, BigQuery, and PostgreSQL.

---

## Tech Stack

- SQL (Snowflake / BigQuery / PostgreSQL)
- Python for data processing
- Apache Spark (PySpark)
- Databricks Lakehouse
- dbt Core
- AWS / GCP / Azure
- Parquet / Delta Lake formats
- Airflow (coming soon)
- Git + GitHub for version control

---

## Roadmap

- Spark transformations (bronze → silver → gold)  
- dbt project with tests and documentation  
- Airflow pipelines  
- Cloud architecture labs  
- API ingestion workflows  
- End-to-end ELT systems  

---

## Contact

LinkedIn: https://www.linkedin.com/in/idribeiro
GitHub: https://github.com/idribeir0  


