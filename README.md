# 🛒 ElectroHub E-Commerce Data Analysis

## 📌 End-to-End Data Analyst Project

This project is an end-to-end **E-Commerce Data Analysis project** created to analyze different areas of an e-commerce business, including **customers, orders, sales, products, profitability, payments, warehouses, and delivery performance**.

The project follows a complete Data Analyst workflow, starting from raw data and ending with an interactive Power BI dashboard and business recommendations.

The complete workflow followed in this project is:

```text
Raw Data
   ↓
Data Cleaning & Preprocessing
   ↓
Cleaned Data
   ↓
Python Exploratory Data Analysis (EDA)
   ↓
SQL Business Analysis
   ↓
Power BI Dashboard
   ↓
Business Insights
   ↓
Business Recommendations
```

The main purpose of this project was not only to create visualizations but to use data to answer important business questions and identify areas where the business can improve.

---

# 🎯 Business Problem

An e-commerce business generates a large amount of data from customers, orders, products, payments, warehouses, and deliveries.

However, raw data alone cannot help management make decisions.

The business needs answers to questions such as:

- Where are most customers coming from?
- Which customer segments are most important?
- Which states have the highest number of customers?
- How many customers are repeat customers?
- Which products and categories perform the best?
- Which categories generate the highest sales and profit?
- Are discounts affecting profitability?
- Which payment methods are associated with cancellations or returns?
- Which warehouses handle the most orders?
- Which warehouses have delivery delays?
- What is the overall on-time and late delivery performance?
- Which business areas require immediate improvement?

Therefore, the objective of this project was to transform raw e-commerce data into meaningful business insights using **Excel/Power Query, Python, SQL, and Power BI**.

---

# 🎯 Project Objectives

The main objectives of this project are:

### 1. Understand Customers

- Analyze the total customer base.
- Identify customers by state.
- Analyze customer acquisition channels.
- Understand customer tier distribution.
- Compare customer segments.
- Identify repeat customers.

### 2. Analyze Orders and Sales

- Calculate total orders.
- Analyze order status.
- Identify order channels.
- Analyze payment methods.
- Calculate sales and profit.
- Calculate Average Order Value.
- Analyze monthly order and sales trends.

### 3. Analyze Products

- Identify top-performing products.
- Analyze category and sub-category performance.
- Compare selling price and cost.
- Identify profitable products.
- Analyze product ratings and reviews.
- Review stock levels.

### 4. Analyze Discounts and Profitability

- Calculate total discounts.
- Compare sales and profit.
- Analyze profit margins.
- Understand the impact of discounts on profitability.
- Identify whether aggressive discounts may reduce margins.

### 5. Analyze Delivery Operations

- Calculate average delivery time.
- Compare promised and actual delivery days.
- Calculate on-time and late delivery performance.
- Compare warehouse performance.
- Identify warehouses requiring operational improvement.

### 6. Build an Interactive Dashboard

Create an interactive Power BI dashboard where users can explore important KPIs and business performance.

---

# 🗂️ Dataset Description

The project uses five related datasets:

1. **Customers**
2. **Orders**
3. **Order Items**
4. **Products**
5. **Delivery**

These tables are connected to create a complete view of the e-commerce business.

---

## 👥 1. Customers Table

The Customers table contains demographic and customer acquisition information.

### Main columns include:

| Column | Description |
|---|---|
| Customer_ID | Unique identifier for each customer |
| Age | Age of the customer |
| Gender | Gender of the customer |
| City | Customer's city |
| State | Customer's state |
| Customer_Tier | Customer segment or tier |
| Signup_Date | Date when the customer signed up |
| Acquisition_Channel | Channel through which the customer was acquired |
| Preferred_Device | Device preferred by the customer |

### Analysis performed:

- Total customers
- Customers by state
- Customers by acquisition channel
- Customers by customer tier
- Average age by customer tier
- Customer distribution across tiers
- State vs customer tier analysis
- Identification of the largest customer acquisition channel
- Identification of the state with the highest number of customers

---

## 🛍️ 2. Orders Table

The Orders table contains information about customer orders.

### Main columns include:

| Column | Description |
|---|---|
| Order_ID | Unique identifier for each order |
| Customer_ID | Customer associated with the order |
| Order_Date | Date on which the order was placed |
| Order_Status | Status of the order |
| Payment_Method | Payment method used by the customer |
| Order_Channel | Channel used to place the order |
| Warehouse | Warehouse associated with the order |
| Priority | Priority level of the order |

### Analysis performed:

- Total orders
- Order status distribution
- Orders by payment method
- Orders by order channel
- Orders by warehouse
- Orders by priority
- Monthly order trends
- Order status by payment method
- Order status by priority
- Cancellation analysis
- Return analysis

---

## 🧾 3. Order Items Table

The Order Items table contains transaction-level sales and profitability information.

### Main columns include:

| Column | Description |
|---|---|
| Order_Item_ID | Unique identifier for each order item |
| Order_ID | Related order |
| Product_ID | Related product |
| Quantity | Quantity purchased |
| Unit_Price_INR | Price per unit |
| Discount_Pct | Discount percentage |
| Gross_Sales_INR | Sales before discount |
| Discount_Amount_INR | Discount amount |
| Net_Sales_INR | Sales after discount |
| Cost_INR | Cost associated with the item |
| Gross_Profit_INR | Profit generated from the item |

### Analysis performed:

- Total quantity sold
- Total gross sales
- Total discount amount
- Total net sales
- Total cost
- Total gross profit
- Sales by product
- Profit by product
- Discount analysis
- Profitability analysis
- Sales trend analysis
- Product contribution analysis

---

## 📦 4. Products Table

The Products table contains information about the products sold by the business.

### Main columns include:

| Column | Description |
|---|---|
| Product_ID | Unique product identifier |
| Category | Main product category |
| Sub_Category | Product sub-category |
| Product_Name | Name of the product |
| Selling_Price_INR | Selling price |
| Cost_INR | Product cost |
| Stock_Quantity | Available stock quantity |
| Product_Rating | Product rating |
| Review_Count | Number of customer reviews |

### Analysis performed:

- Total products
- Products by category
- Products by sub-category
- Average selling price
- Average cost
- Average product profit
- Product ratings
- Review count
- Stock quantity analysis
- Selling price vs cost comparison
- Category-level performance
- Product-level performance

---

## 🚚 5. Delivery Table

The Delivery table contains information related to shipment and delivery performance.

### Main columns include:

| Column | Description |
|---|---|
| Delivery_ID | Unique delivery identifier |
| Order_ID | Related order |
| Warehouse | Warehouse from which the order was handled |
| Shipment_Type | Type of shipment |
| Promised_Days | Promised delivery time |
| Actual_Delivery_Days | Actual delivery time |
| Shipping_Cost_INR | Cost of shipping |
| Delivery_Status | On-time or late delivery status |
| Ship_Date | Date of shipment |

### Analysis performed:

- Total deliveries
- Delivery status distribution
- Average actual delivery days
- Promised vs actual delivery days
- Average delivery delay
- On-time delivery rate
- Late delivery rate
- Warehouse-wise delivery performance
- Shipment type analysis
- Shipping cost analysis

---

# 🔗 Data Model

The project uses a relational data structure.

```text
                 ┌───────────────┐
                 │   Customers   │
                 └───────┬───────┘
                         │
                    Customer_ID
                         │
                         ▼
                 ┌───────────────┐
                 │    Orders     │
                 └───────┬───────┘
                         │
                    Order_ID
                  /              \
                 ▼                ▼
        ┌────────────────┐   ┌───────────────┐
        │  Order Items   │   │   Delivery    │
        └────────┬───────┘   └───────────────┘
                 │
             Product_ID
                 │
                 ▼
        ┌────────────────┐
        │    Products    │
        └────────────────┘
```

This relationship makes it possible to connect:

**Customer → Order → Product Purchase → Sales/Profit → Delivery Performance**

---

# 🧹 Phase 1: Data Cleaning and Preprocessing

Before starting the analysis, the data was checked for quality issues.

Data cleaning was performed using **Excel and Power Query**.

The following checks were performed.

---

## 1️⃣ Data Type Validation

I checked whether every column had an appropriate data type.

Examples:

- IDs were checked as identifiers.
- Dates were converted and checked as date fields.
- Numerical columns such as Age, Quantity, Price, Cost, Sales, Profit, Discount, and Delivery Days were checked as numeric values.
- Categorical columns such as Gender, State, Customer Tier, Acquisition Channel, Warehouse, Category, and Order Status were checked for consistency.

Correct data types are important because incorrect types can affect calculations, filtering, aggregation, and visualizations.

---

## 2️⃣ Missing and Null Value Analysis

I checked different columns for missing values.

The missing-value review included columns such as:

- Age
- Gender
- Acquisition Channel
- Warehouse
- Actual Delivery Days
- Shipping Cost
- Product_ID
- Quantity
- Unit Price
- Discount Percentage

Different missing-value treatments were considered based on the business meaning of each column.

For example:

- Numerical columns were reviewed to determine whether median or another suitable treatment was appropriate.
- Categorical columns were reviewed for replacement using meaningful categories such as `Unknown` where appropriate.
- Columns with a high percentage of missing values were not blindly filled using mean, median, or mode.

The objective was to avoid introducing unrealistic values into the dataset.

---

## 3️⃣ Duplicate Value Check

I checked the data for duplicate records.

Duplicates can lead to:

- Incorrect customer counts
- Incorrect order counts
- Inflated sales
- Incorrect profit calculations
- Misleading KPIs

Therefore, duplicate values were checked before performing the analysis.

---

## 4️⃣ Spelling and Case Consistency

Categorical columns were checked for spelling errors and inconsistent capitalization.

For example:

```text
SURAT
Surat
surat
```

These values should represent the same city.

Similarly, categories were checked for variations such as:

```text
sports
SPORTS
Sports
```

Such values can create separate categories in charts and dashboards even though they represent the same business category.

Values were standardized to improve consistency.

---

## 5️⃣ Inconsistent Formatting

I also reviewed formatting inconsistencies.

Examples included numerical values with different decimal precision, such as:

```text
2.333333
1.2
3.4
```

Numerical values were standardized where appropriate to improve readability and consistency.

---

## 6️⃣ Invalid Value Checks

The data was reviewed for values that may not make business sense.

Examples investigated included:

- Very low or very high customer ages
- Negative discount values
- Extremely high discounts
- Negative profit
- Unusual numerical values

Each value was considered from a business perspective instead of automatically treating every unusual value as an error.

For example, a negative profit may be possible in a real business if the cost is higher than the selling price.

Similarly, high discounts were reviewed before deciding whether they should be treated as invalid.

---

## 7️⃣ Outlier Investigation

Outlier checking was also part of the preprocessing process.

Because there were multiple numerical columns, outlier analysis was difficult to perform efficiently in Power Query alone.

Therefore, Python was also used to investigate numerical distributions and unusual values.

The purpose was to identify potentially unusual values in fields such as:

- Age
- Quantity
- Unit Price
- Discount
- Sales
- Cost
- Profit
- Delivery Days
- Shipping Cost

Outliers were investigated rather than automatically removed because some extreme values can represent genuine business transactions.

---

# 🐍 Phase 2: Exploratory Data Analysis Using Python

After data preprocessing, the data was analyzed using Python and Jupyter Notebook.

### Libraries used:

```python
Pandas
NumPy
Matplotlib
Seaborn
```

Python was used to understand the data, calculate KPIs, identify patterns, and create visualizations.

The EDA was performed table by table.

---

## 👥 Customer EDA

Customer analysis focused on understanding the customer base.

### Questions explored:

- How many total customers are there?
- Which state has the highest number of customers?
- Which acquisition channel brings the most customers?
- How are customers distributed across customer tiers?
- What is the average age by customer tier?
- How are customer tiers distributed across different states?

### Visualizations created:

- Customer count by state
- Customer count by acquisition channel
- Customer distribution by tier
- Customer tier vs average age
- State vs customer tier

### Key observation:

Organic acquisition was one of the strongest sources of customers.

Paid Search also showed strong customer acquisition performance.

Social Media and Email performed better than lower-performing channels such as Referral and Affiliate.

This helps the business understand where customers are coming from and which marketing channels should be monitored further.

---

## 🛍️ Order EDA

The Orders table was analyzed to understand transaction and order behavior.

### Analysis included:

- Total orders
- Order status distribution
- Orders by payment method
- Orders by order channel
- Orders by warehouse
- Orders by priority
- Monthly order trends
- Order status comparison across payment methods
- Order status comparison across priority levels

This analysis helped identify patterns in:

- Customer purchasing behavior
- Payment preferences
- Order channels
- Operational workload
- Order outcomes

---

## 💰 Sales and Order Items EDA

The Order Items table was used to analyze financial performance.

### Important KPIs calculated:

- Total Sales
- Total Gross Profit
- Total Quantity Sold
- Total Orders
- Average Order Value
- Profit Margin
- Discount Amount

### Important analysis areas:

- Sales performance
- Product-level sales
- Profitability
- Discount behavior
- Sales and profit comparison
- Quantity sold
- Revenue contribution

### Business purpose:

The objective was to understand whether higher sales were also generating healthy profits.

This is important because a product can generate high revenue but still have a low profit margin.

---

## 📦 Product EDA

Product analysis focused on understanding product and category performance.

### Analysis included:

- Number of products
- Product category distribution
- Sub-category distribution
- Average selling price by category
- Product profitability
- Product cost
- Stock quantity
- Product ratings
- Review counts
- Selling price vs cost

This analysis can help identify:

- Strong product categories
- Profitable products
- Low-margin products
- Products requiring inventory attention
- Customer-rated products

---

## 🚚 Delivery EDA

Delivery analysis focused on operational performance.

### Important KPIs:

- Total deliveries
- Average delivery days
- On-time delivery rate
- Late delivery rate
- Average delivery delay

### Analysis included:

- Delivery status
- Warehouse performance
- Promised delivery days
- Actual delivery days
- Actual vs promised delivery comparison
- Shipment type
- Shipping cost

The purpose was to identify operational areas where delivery performance could be improved.

---

# 🗄️ Phase 3: SQL Business Analysis

After performing EDA in Python, the cleaned datasets were loaded into SQL.

SQL was used to answer further business questions by joining the five related tables.

The SQL analysis focused on **business problem-solving**, not only basic queries.

Approximately **30 business-focused questions** were analyzed.

---

## 📊 Basic Business KPIs

SQL was used to calculate important KPIs such as:

- Total Customers
- Total Orders
- Total Products
- Total Sales
- Total Profit
- Total Quantity Sold
- Average Order Value
- Profit Margin

---

## 👥 Customer Business Analysis

Questions included:

- Which acquisition channel brings the most customers?
- Which state has the most customers?
- How many customers are repeat customers?
- Which customer tiers are most valuable?
- Which customers generate the highest revenue?
- How is customer behavior distributed across segments?

This helps the business understand customer acquisition and retention.

---

## 🛍️ Sales and Order Analysis

Questions included:

- What is the total sales performance?
- What is the total profit?
- Which order channels generate more orders?
- Which payment methods are used the most?
- Which order statuses are most common?
- How does sales performance change over time?
- Which warehouses handle more orders?

---

## 📦 Product and Category Analysis

Questions included:

- Which products generate the highest sales?
- Which products generate the highest profit?
- Which categories generate the highest revenue?
- Which categories are most profitable?
- Which products have strong sales but weak margins?
- Which products contribute the most to the business?

---

## 💰 Profit and Discount Analysis

Questions included:

- Which products generate the highest profit?
- Which categories have the best profit performance?
- How do discounts affect profit?
- Are higher discounts reducing margins?
- Which products should be monitored from a profitability perspective?

The purpose was to avoid evaluating business performance only by sales.

---

## 💳 Payment Analysis

Questions included:

- Which payment method is used the most?
- Which payment methods have higher cancellation rates?
- Which payment methods have higher return behavior?

This can help the business investigate whether particular payment methods are associated with unsuccessful orders.

---

## 🚚 Warehouse and Delivery Analysis

Questions included:

- Which warehouse handles the most orders?
- Which warehouse has the highest delivery time?
- Which warehouse has the highest cancellation or return rate?
- Which warehouses have higher late-delivery performance?
- How does delivery performance compare across warehouses?

This analysis helps identify potential operational bottlenecks.

---

# 📊 Phase 4: Power BI Interactive Dashboard

After completing data cleaning, Python EDA, and SQL analysis, the data was loaded into Power BI.

An interactive dashboard was created to make the analysis easier to understand for business users.

The Power BI report contains the following pages:

1. **Home**
2. **Customer Growth**
3. **Product Analysis**
4. **Delivery Analysis**

---

# 🏠 Dashboard Page 1: Home

The Home page provides an overall summary of business performance.

### Important KPIs include:

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Average Order Value
- Profit Margin %

The purpose of this page is to provide a quick view of the overall business.

A manager should be able to understand the business situation without checking every table separately.

---

# 👥 Dashboard Page 2: Customer Growth

This page focuses on customers and growth.

### Analysis includes:

- Customer acquisition channels
- Customer tiers
- Customer distribution
- Customer growth
- Repeat customers
- Customer contribution
- Geographic customer analysis

### Business purpose:

This page helps answer:

> Where are our customers coming from, and which customer segments should the business focus on?

---

# 📦 Dashboard Page 3: Product Analysis

This page focuses on product and category performance.

### Analysis includes:

- Sales by category
- Profit by category
- Product performance
- Top products
- Product profitability
- Discount analysis
- Category contribution

### Business purpose:

This page helps answer:

> Which products and categories are driving the business, and are they also profitable?

---

# 🚚 Dashboard Page 4: Delivery Analysis

This page focuses on logistics and operational performance.

### Analysis includes:

- Average delivery days
- On-time delivery rate
- Late delivery rate
- Cancellation rate
- Return rate
- Warehouse performance
- Delivery status
- Promised vs actual delivery performance

### Business purpose:

This page helps answer:

> Where are operational and delivery problems occurring, and which warehouses require attention?

---

# 🧮 DAX Measures and KPIs

DAX measures were used in Power BI to calculate dynamic KPIs.

Important measures include calculations for:

### Total Sales

```text
Total Sales = SUM(Net_Sales_INR)
```

### Total Profit

```text
Total Profit = SUM(Gross_Profit_INR)
```

### Total Orders

```text
Total Orders = DISTINCTCOUNT(Order_ID)
```

### Total Customers

```text
Total Customers = DISTINCTCOUNT(Customer_ID)
```

### Average Order Value

```text
AOV = DIVIDE([Total Sales], [Total Orders])
```

### Profit Margin %

```text
Profit Margin % =
DIVIDE([Total Profit], [Total Sales]) * 100
```

### Late Delivery %

The percentage of deliveries marked as late.

### Cancellation Rate %

The percentage of orders cancelled.

### Return Rate %

The percentage of orders returned.

These measures make the dashboard interactive because the values change automatically when users apply filters and slicers.

---

# 💡 Key Business Insights

Based on the analysis performed across Excel, Python, SQL, and Power BI, the project focuses on the following insights.

---

## 1. Customer Acquisition

Organic is an important customer acquisition channel.

Paid Search also performs strongly.

Social Media and Email contribute a meaningful number of customers compared with lower-performing channels such as Referral and Affiliate.

### Business implication:

The business should not only focus on the number of customers acquired but should also compare channels based on:

- Customer quality
- Repeat purchases
- Revenue contribution
- Customer lifetime value
- Marketing cost

---

## 2. Customer Segmentation

Customers are divided into different tiers such as:

```text
New → Regular → Loyal → VIP
```

### Business opportunity:

The business can create targeted campaigns to encourage customers to move from lower-value tiers toward higher-value tiers.

For example:

- Welcome offers for New customers
- Repeat purchase offers for Regular customers
- Loyalty benefits for Loyal customers
- Exclusive rewards for VIP customers

---

## 3. Sales vs Profit

High sales do not always mean high profitability.

A product can generate strong revenue while discounts or high costs reduce its profit margin.

### Business implication:

Management should monitor both:

```text
Sales + Profit + Profit Margin
```

instead of evaluating products only by revenue.

---

## 4. Discount Strategy

Discounts can increase sales volume, but excessive discounting can negatively affect profitability.

### Recommendation:

Discount decisions should be based on:

- Product demand
- Sales performance
- Gross profit
- Profit margin
- Customer value

The business should avoid using discounts only to increase revenue if those discounts significantly reduce profit.

---

## 5. Product Performance

Category and product analysis helps identify which areas contribute most to sales and profit.

### Business opportunity:

High-performing and profitable products should receive attention in areas such as:

- Inventory availability
- Marketing
- Product recommendations
- Cross-selling
- Upselling

At the same time, low-profit products should be reviewed.

---

## 6. Warehouse Performance

Warehouse analysis can identify differences in:

- Order volume
- Delivery time
- Late delivery performance
- Cancellation and return behavior

### Business implication:

Warehouses with poor delivery performance should be investigated to understand whether the issue is related to:

- Processing time
- Inventory availability
- Shipment allocation
- Logistics partners
- Delivery capacity

---

## 7. Delivery Performance

Late deliveries can negatively affect customer experience and potentially increase cancellations or returns.

### Recommendation:

The business should monitor:

- Average delivery days
- Late delivery percentage
- Warehouse performance
- Promised vs actual delivery days

A warehouse-level delivery KPI can help management identify operational problems early.

---

# 🎯 Business Recommendations

Based on the analysis, the following recommendations can be considered.

---

## Recommendation 1: Improve Customer Retention

Focus on converting customers through the customer journey:

```text
New
 ↓
Regular
 ↓
Loyal
 ↓
VIP
```

Possible strategies:

- Personalized offers
- Loyalty programs
- Repeat purchase campaigns
- Product recommendations
- VIP benefits

---

## Recommendation 2: Optimize Acquisition Channels

Continue monitoring strong acquisition channels such as Organic and Paid Search.

However, customer acquisition should be evaluated using more than customer count.

Important metrics should include:

- Revenue per customer
- Repeat purchase rate
- Customer retention
- Customer lifetime value
- Acquisition cost

---

## Recommendation 3: Protect Profit Margins

Before increasing discounts, the business should check the effect on:

- Net sales
- Gross profit
- Profit margin

A discount strategy that increases sales but significantly reduces profit may not be sustainable.

---

## Recommendation 4: Focus on Profitable Products

Identify products with:

```text
High Sales + High Profit
```

These products can be prioritized for:

- Inventory management
- Marketing campaigns
- Cross-selling
- Product recommendations

Products with:

```text
High Sales + Low Profit
```

should be reviewed for pricing, discounting, or cost improvement opportunities.

---

## Recommendation 5: Improve Delivery Operations

Regularly monitor warehouse-level KPIs.

Focus on:

- Late delivery rate
- Average delivery days
- Promised vs actual delivery
- Order volume
- Cancellation rate
- Return rate

Warehouses with poor performance should be investigated individually.

---

## Recommendation 6: Reduce Cancellations and Returns

Analyze cancellations and returns by:

- Payment method
- Product
- Category
- Customer tier
- Order channel
- Warehouse

This can help identify possible root causes of unsuccessful orders.

---

# 🛠️ Tools and Technologies Used

| Tool | Purpose |
|---|---|
| Microsoft Excel | Initial data inspection |
| Power Query | Data cleaning and transformation |
| Python | Data analysis and EDA |
| Jupyter Notebook | Python analysis environment |
| Pandas | Data manipulation |
| NumPy | Numerical analysis |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| SQL | Business analysis and querying |
| Power BI | Interactive dashboard creation |
| DAX | Dynamic KPI and measure calculations |
| GitHub | Project documentation and version control |

---

# 📁 Project Structure

The repository is organized according to the work completed during the project.

```text
ElectroHub_Ecommerce_Analysis/
│
├── 📊 Power-BI/
│   │
│   ├── Power BI Dashboard (.pbix)
│   └── Dashboard-related files
│
├── 🐍 Python EDA/
│   │
│   └── Jupyter Notebook containing:
│       ├── Customer EDA
│       ├── Order EDA
│       ├── Sales Analysis
│       ├── Product Analysis
│       └── Delivery Analysis
│
├── 📂 Raw Data/
│   │
│   └── Original/raw datasets before preprocessing
│
├── 🗄️ SQL Analysis/
│   │
│   └── SQL queries containing business-focused analysis
│
├── 🧹 cleaned Data/
│   │
│   └── Cleaned and analysis-ready datasets
│
└── 📄 README.md
```

---

# 🔄 Complete Project Workflow

```text
STEP 1
Raw E-Commerce Data
        ↓
STEP 2
Data Understanding
        ↓
STEP 3
Data Cleaning using Excel & Power Query
        ↓
• Data Types
• Missing Values
• Null Values
• Duplicates
• Spelling Errors
• Inconsistent Formatting
• Invalid Values
• Outlier Investigation
        ↓
STEP 4
Cleaned Data
        ↓
STEP 5
Python EDA
        ↓
• Customers
• Orders
• Order Items
• Products
• Delivery
        ↓
STEP 6
SQL Business Analysis
        ↓
• KPIs
• Customer Analysis
• Sales Analysis
• Product Analysis
• Profit Analysis
• Payment Analysis
• Warehouse Analysis
• Delivery Analysis
        ↓
STEP 7
Power BI Dashboard
        ↓
• Home
• Customer Growth
• Product Analysis
• Delivery Analysis
        ↓
STEP 8
Business Insights
        ↓
STEP 9
Business Recommendations
```

---

# 📈 Skills Demonstrated

This project demonstrates the following Data Analyst skills:

- Data Cleaning
- Data Preprocessing
- Missing Value Analysis
- Duplicate Detection
- Data Validation
- Outlier Investigation
- Exploratory Data Analysis
- Data Visualization
- KPI Development
- SQL Joins
- SQL Aggregations
- Business Analysis
- Customer Analysis
- Sales Analysis
- Product Analysis
- Profitability Analysis
- Delivery Analysis
- Power BI Dashboard Development
- DAX
- Business Problem Solving
- Data-Driven Recommendations

---

# 🚀 Project Outcome

Through this project, raw e-commerce data was transformed into a complete business analysis.

The project demonstrates how a Data Analyst can:

```text
Understand Raw Data
        ↓
Clean and Prepare Data
        ↓
Explore Data Using Python
        ↓
Answer Business Questions Using SQL
        ↓
Build KPIs and Visualizations in Power BI
        ↓
Identify Business Problems
        ↓
Provide Actionable Recommendations
```

The final result is an interactive analytics project that helps convert data into insights related to:

- Customer acquisition
- Customer retention
- Sales performance
- Profitability
- Discount strategy
- Product performance
- Payment behavior
- Warehouse operations
- Delivery performance
- Cancellations
- Returns

---

## 👤 Author

**ElectroHub E-Commerce Data Analysis**  
End-to-End Data Analyst Portfolio Project

### Skills

`Excel` • `Power Query` • `Python` • `Pandas` • `NumPy` • `Matplotlib` • `Seaborn` • `SQL` • `Power BI` • `DAX` • `Data Cleaning` • `EDA` • `Business Analysis` • `Data Visualization`

---

### ⭐ If you found this project useful

Feel free to explore the different folders to see the complete workflow, from **raw data to the final Power BI dashboard**.
