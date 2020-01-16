CREATE VIEW V_Customers AS SELECT First_Name, Last_Name, e_mail Biliing_address, Billing_city,Biling_NPA,shipping_Address,Shipping_City,Shipping_zip,regestration_date;
CREATE VIEW V_Events AS SELECT Event_name, Event_Address, Zip,City,event_date;
CREATE VIEW V_Cantons AS SELECT Canton_Name, Canton_Language;
CREATE VIEW V_Products AS SELECT Id_product, Quantity, Shipping-address, zip, City;
CREATE VIEW V_Winemakers AS SELECT name_cellar, name, lastname, E_mail, address_cellar, phone_number, Zip, City;
CREATE VIEW V_Wine AS SELECT WineName, BottelSize, BottelPrice, Vintage, Stock, AlcoholPercentage, Serialnumber;
CREATE VIEW V_SpecialeWine AS SELECT WineName, Color, grapeType;
CREATE VIEW V_WineColors AS SELECT grapeType, grapeColor;
CREATE VIEW V_Oenologistes AS SELECT Name, LastName, laboratory, certificate;
CREATE VIEW V_Grapjuices AS SELECT grapType, GrapColor, bottelSize;


