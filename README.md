# Setup integration with Azure and copy csv files to SnowFlake using stage and integration

Created storage account and added 2 containers csv and json . Added one csv and json files in each containers

![image](https://github.com/user-attachments/assets/890de0dd-4301-428a-82f8-7fcc57b70ace)


![image](https://github.com/user-attachments/assets/81aea45c-db2f-4f37-aded-38cf8b195722)

#1 Create storage integration object in SnowFlake DB

![image](https://github.com/user-attachments/assets/dafe2c65-bdb1-4362-b1bf-cbc9958d6435)

![image](https://github.com/user-attachments/assets/3e10cece-1754-485c-bf01-65480e6f7a38)

From properties, we need to copy below url and use it in azure for reference

![image](https://github.com/user-attachments/assets/ed699a30-5ca6-4f76-86b3-16d0eb47e021)

Copy and paste above URL in browser and provide permission to access

![image](https://github.com/user-attachments/assets/1ffd56a0-1d92-4b99-a59a-77249ae13f48)

Next we need to set azure role and provide approprite permissions to access blob containers

Go To IAM

![image](https://github.com/user-attachments/assets/2cf42118-20b0-4871-862e-5d8f1fd0e86b)


![image](https://github.com/user-attachments/assets/7cef6b88-b8ba-4890-a3be-2981ba59a5ee)

Now connection to Azure blob storage containers are successfule

![image](https://github.com/user-attachments/assets/ae3ba304-9590-41c7-bc30-ea243d93ab2d)



![image](https://github.com/user-attachments/assets/60d8a053-5547-4c73-95e6-4315630e53e8)

Multitenant  should be provided in role ![image](https://github.com/user-attachments/assets/9b4600d8-892b-4ea3-bd51-72b4288c55d0)

![image](https://github.com/user-attachments/assets/95efb235-a857-47b5-a0e0-dd77e0a6dc25)

Assign the role

![image](https://github.com/user-attachments/assets/5068ce2f-2a8b-4636-9e53-290df8ce1b43)

Next we will create File format and stage in SnowFlake

![image](https://github.com/user-attachments/assets/57f73eca-1856-4a7c-b532-8208c5a83a3c)


![image](https://github.com/user-attachments/assets/62947cb0-57ee-48b2-b08c-616efa3811c3)

To check data is able to view or not 

![image](https://github.com/user-attachments/assets/68b058c8-9db5-43f6-a032-49324a9b9ef8)


Next step, create table and load csv data in to this new table

![image](https://github.com/user-attachments/assets/e0906134-5534-415d-b515-d0e0d6d64daa)


![image](https://github.com/user-attachments/assets/bf551253-f64a-45d6-a976-aeb8a4531dd3)

Modified fileformat to include skip header

![image](https://github.com/user-attachments/assets/a5f88f24-7e29-4947-9562-43aa9cac9dbe)


Data  Loaded Successfully


![image](https://github.com/user-attachments/assets/5b3db8fc-4fcc-4cf2-8fc3-b42e35f34556)

![image](https://github.com/user-attachments/assets/90188a7c-073b-42c3-aaeb-37669ba042d9)

# Happy Learning !!!!


















