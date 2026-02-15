# Inventory GR/IR Reconciliation & Accrual Monitoring System

## Project Overview

This project simulates an ERP-based inventory financial control system used in manufacturing and supply chain environments.

The objective is to detect discrepancies between:

- Purchase Orders (PO)
- Goods Receipts (GR)
- Invoice Receipts (IR)
- Accrual Adjustments

The system identifies quantity mismatches and financial exposure impacting month-end closing and inventory valuation.

---

## Business Context

In ERP systems (e.g., SAP), mismatches between PO, GR, and IR documents generate open GR/IR balances that must be cleared before financial close.

This project replicates that reconciliation logic using structured SQL joins and variance calculations.

---

## Architecture

Document Flow Modeled:

PO → GR → IR → Accrual  

Data Layer:
- `data/` → Raw ERP simulation datasets  
- `sql/` → Reconciliation query logic  

Reconciliation Output Includes:
- PO vs GR quantity variance  
- GR vs IR quantity variance  
- Value variance calculation  
- Financial exposure monitoring  

---

## Key Calculations

Quantity Variance:
PO Ordered Qty – Goods Received Qty  
Goods Received Qty – Invoice Qty  

Value Variance:
(GR Qty × PO Price) – (Invoice Qty × Invoice Price)

---

## Skills Demonstrated

- Inventory Accounting  
- GR/IR Clearing Concepts  
- Accrual Monitoring  
- Month-End Financial Support  
- Supplier Risk Analysis  
- SQL Joins & Variance Modeling  
- Operational Financial Analysis  

---

## Repository Structure

data/  → Raw ERP simulation datasets  
sql/   → Reconciliation query logic  

---

## Author

Vamsi Krishna Arepaty  
M.S. Data Analytics  
Open to Supply Chain / Operations / ERP Analytics roles  
