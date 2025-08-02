# chinook-invoice-sql-analysis
SQL analysis of the Chinook music store dataset to extract customer and invoice insights.
# 💼 Chinook Invoice Analysis

## 📁 Project Description

This project explores the **Chinook music store database**, focusing on **customer behavior** and **invoice data**. We perform SQL-based analysis to extract meaningful business insights such as customer locations, revenue patterns, and purchase behaviors.

## 🧠 Objectives

- Understand purchasing behavior by location and time.
- Analyze invoice trends and customer segmentation.
- Derive revenue insights across cities and countries.

## 📂 Dataset

The Chinook database simulates a digital music store, containing tables for:
- `Customer`
- `Invoice`
- `InvoiceLine`
- `Track`, etc.

Used only `Customer` and `Invoice` for this project.

## 🛠️ SQL Tasks Performed

- Filter customers by city, country, name patterns.
- Join `Customer` and `Invoice` to extract invoice info.
- Use aggregate functions to:
  - Count invoices per month
  - Average invoice amounts per city
  - Find high-spending customers
- Group revenue by country and city.
- Apply conditions using `HAVING`, `BETWEEN`, `LIKE`.

## 📈 Key Insights

- Highest customer concentration from **USA**.
- Revenue from **specific countries (like Brazil, USA)** exceeds $100.
- Cities with higher invoice averages offer opportunity for premium offerings.
- Around **18+ types of customer behaviors** were captured in SQL.

## 📎 Files Included

- `chinook_invoice_dataset_sql.sql` – all queries.
- `chinook_invoice_ppt.pptx` – visual presentation of insights.
- `chinook_invoice_questions.pdf` – question list used.

## 📌 Tools Used

- SQL (MySQL syntax)
- PowerPoint for reporting

## ✅ Conclusion

This project gives hands-on exposure to SQL querying techniques, helping extract hidden insights from a structured music sales dataset.

