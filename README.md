# 🛍️ E-Commerce Database Project (Group Task)

This project is a structured relational database for an e-commerce platform, designed and implemented as individual assignment. It models essential product data, variations, attributes, and categorization needed in real-world online stores.

---

## ✅ What Has Been Done

### 1️⃣ ERD Creation
- An **Entity-Relationship Diagram (ERD)** was designed to model the database structure.
- Key entities like products, variations, sizes, colors, and attributes were identified.
- Relationships between tables (1-to-many and many-to-many) were defined.
- Primary keys, foreign keys, and constraints were documented.
- Tool used: **dbdiagram.io**.

### 2️⃣ Table Creation
The following core tables were created successfully:
-`product_image`
-`color`
-`product_category`
-`product`
-`product_item`
-`brand`
-`product_variation`
-`size_category`
-`size_option`
-`product_attribute`
-`attribute_category`
-`attribute_type`

### 3️⃣ Data Insertion
- Inserted **brands**, **products**, **colors**, **sizes**, and **categories**.
- Created **product variations** by combining product, color, and size.
- Inserted data into `product_items` using `variation_id`, SKU, price, and stock quantity.
- Inserted several product **attributes** like weight, dimensions, processor, and material composition.
- Handled duplicate entries and foreign key relationships during insertion.


## 🔄 Data Flow
- Products are linked to brands and categories.
- Each product can have multiple variations (color + size).
- Each variation becomes a purchasable item (`product_item`) with its own SKU and stock.
- Additional product attributes enhance detail (e.g., material, weight).



## 📁 Files Included
- `ecommerce.sql` – SQL script containing `CREATE TABLE` and `INSERT INTO` statements.
- `ERD.png` – Diagram showing the database schema and relationships.
- `README.md` – This documentation file.


## 🚀 Next Steps
- Add more product categories and attributes.
- Implement user accounts, orders, and payment tables.
- Normalize the schema further for scalability.

---

##  Contributors
- [Emmaculate Adhiambo Oduor]


---

## 🔗 Submission Notes
- GitHub repository link: _[]_
- ERD and SQL files are uploaded and publicly accessible.

