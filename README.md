
# Data Portfolio

## 👋 About Me
I am a transitioning professional with a strong background in **SQL, econometrics, and analytics**.  
Currently focused on building a career in **Data Analysis / BI Analysis**, while upskilling towards **Data Science**.  
Certified in **Microsoft Azure AI Fundamentals (AI-900)**. Highly coachable, pragmatic, and execution-driven.

## 🛠️ Technologies & Skills
- **SQL** – advanced queries, optimization, data analysis
- **Python** – pandas, numpy, scikit-learn (entry-level ML)
- **Power BI** – dashboards, data visualization
- **Econometrics** – statistical modeling and analysis
- **Git/GitHub** – version control, portfolio building

## 📂 Portfolio Structure
This repository contains projects showcasing my analytical and BI skills:

```
data-portfolio/
│
├── SQL/                            # SQL scripts and queries
│
├── Python/                         # Jupyter notebooks and ML experiments
│
├── PowerBI/                        # Power BI dashboards (.pbix files)
│
└── docs/                           # Project descriptions and documentation
```

## 🚀 Projects Roadmap
- **Week 1:** SQL project – retail sales analysis
- **Week 2:** Python notebook – churn prediction model
- **Week 3:** Power BI dashboard – interactive sales dashboard
- **Week 4:** Documentation and portfolio refinement

## 📫 Contact
- **LinkedIn:** [linkedin.com/in/piotr-golembiewski/](https://www.linkedin.com/in/piotr-golembiewski/)
- **GitHub:** [github.com/pigole](https://github.com/pigole)

## ⚙️  How to run
- **Week 1:** SQL
1. Use [PostgreSQL downloader](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads/) to install database client
2. Download retail_analysis.sql file from my repository to your disc
3. Open Terminal (Menu Start -> cmd) and enter directory of above file using "cd" command (propably: cd C:\Users\[Your user name]\Downloads\)
4. Use following commands one-by-one to enter the analysis in PostgreSQL environment:  
```
psql -U postgres  
CREATE DATABASE retail;  
\c retail  
psql -U postgres -d retail -f retail_analysis.sql
```
