/* 
=====================================================================
DDL Script: Create Bronze Tables
=====================================================================
Script Purpose:
  This script creates tables in the 'bronze' schema, dropping exisitng
  table if they already exist.
  Run this script to re-define the DDL strcture of 'bronze' tables 
=====================================================================
*/

USE DataWarehouse 
IF OBJECT_ID ('bronze.crm_cust_info', 'U') IS NOT NULL 
    DROP TABLE bronze.crm_cust_info
CREATE TABLE bronze.crm_cust_info (
    cst_id INT,
    cst_key NVARCHAR (50),
    cst_firstname NVARCHAR (50),
    cst_lastname NVARCHAR (50),
    cst_material_status NVARCHAR (50),
    cst_gndr NVARCHAR (50),
    cst_create_date DATE
);

IF OBJECT_ID ('bronze.crm_prd_info', 'U') IS NOT NULL 
    DROP TABLE bronze.crm_prd_info
CREATE TABLE bronze.crm_prd_info (
    prd_id INT NULL,
    prd_key NVARCHAR (50) NULL,
    prd_nm NVARCHAR (100) NULL,
    prd_cost INT NULL,
    prd_line NVARCHAR (50) NULL,
    prd_start_dt DATETIME NULL,
    prd_end_dt DATETIME NULL
);

IF OBJECT_ID ('bronze.crm_sales_info', 'U') IS NOT NULL 
    DROP TABLE bronze.crm_sales_info
CREATE TABLE bronze.crm_sales_info (
    sls_ord_num NVARCHAR (50) NULL,
    sls_prd_key NVARCHAR (50) NULL,
    sls_cust_id INT NULL,
    sls_order_dt INT NULL,
    sls_ship_dt INT NULL,
    sls_due_dt INT NULL,
    sls_sales INT NULL,
    sls_quantity INT NULL,
    sls_price INT NULL
);
 
/* Creating ERP Tables
===================================================================== 
*/
IF OBJECT_ID ('bronze.erp_cust_az12', 'U') IS NOT NULL 
    DROP TABLE bronze.erp_cust_az12
CREATE TABLE bronze.erp_cust_az12 (
    cid NVARCHAR (50) NULL,
    bdate DATE NULL,
    gen NVARCHAR(50) NULL
);

IF OBJECT_ID ('bronze.erp_loc_a101', 'U') IS NOT NULL 
    DROP TABLE bronze.erp_loc_a101
CREATE TABLE bronze.erp_loc_a101 (
    cid NVARCHAR (50) NULL,
    cntry NVARCHAR (50) NULL
);

IF OBJECT_ID ('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL 
    DROP TABLE bronze.erp_px_cat_g1v2
CREATE TABLE bronze.erp_px_cat_g1v2 (
    id NVARCHAR(50) NULL,
    cat NVARCHAR(50) NULL,
    subcat NVARCHAR(50) NULL,
    maintenance NVARCHAR(50) NULL
);







