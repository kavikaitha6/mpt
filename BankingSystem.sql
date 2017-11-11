--drop constraints




--drop tables

	DROP TABLE AccountMaster;
	DROP TABLE Customer;
	DROP TABLE Transactions;
	DROP TABLE ServiceTracker;
	DROP TABLE UserTable;
	DROP TABLE Fund_Transfer;
	DROP TABLE PayeeTable;

--drop sequences

	DROP SEQUENCE Product_Id_Sequence;
	DROP SEQUENCE  Order_Details_Id_Sequence;

-- Create Tables

	CREATE TABLE AccountMaster(
		Account_ID NUMBER(10) NOT NULL,
		Account_Type VARCHAR2(25),
		Account_Balance NUMBER(15),
		Open_Date Date
	);

	CREATE TABLE Customer(
		Account_ID NUMBER(10) NOT NULL,
		customer_name VARCHAR2(30) NOT NULL,
		Email VARCHAR2(30),
		Address VARCHAR2(100),
		Pancard VARCHAR2(15)
		Account_Type VARCHAR2(25)
	);

	CREATE TABLE Transactions(
		Transaction_ID NUMBER,
		Tran_description VARCHAR2(100),
		Date_of_Transaction DATE,
		Transaction_Type VARCHAR2(15),
		Tran_Amount NUMBER(15),
		Account_No NUMBER(10)
	);
	
	CREATE TABLE ServiceTracker(
		Service_ID NUMBER, 
		Service_Description VARCHAR2(100),
		Account_ID NUMBER, 
		Service_Raised_Date DATE,
		Service_status VARCHAR2(40)
	);
	
	CREATE TABLE UserTable(
		Account_ID NUMBER(15),
		user_id VARCHAR2(15),
		login_password VARCHAR2(15),
		transaction_password VARCHAR2(15),
		lock_status VARCHAR2(10)
		secret_question VARCHAR2(50),
		secret_answer VARCHAR2(40),
		
	);
	
	CREATE TABLE Fund_Transfer(
		FundTransfer_ID NUMBER,
		Account_ID NUMBER(10),
		Payee_Account_ID NUMBER(10), 
		Date_Of_Transfer DATE, 
		Transfer_Amount NUMBER(15)
	);

	CREATE TABLE PayeeTable(
		Account_Id NUMBER,
		Payee_Account_Id NUMBER, 
		NickName VARCHAR2(40)
	);	

--Create sequences



--Insert statements



-- Constraits (Primary and key are to be added)
-- Add them after this line.

