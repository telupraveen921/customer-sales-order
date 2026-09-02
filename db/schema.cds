namespace sales;

using { cuid, managed } from '@sap/cds/common';

entity Customers : cuid, managed {
  name    : String(100) @mandatory;
  email   : String(120);
  phone   : String(30);
  city    : String(60);
  country : String(60);
  orders  : Association to many Orders on orders.customer = $self;
}

entity Orders : cuid, managed {
  orderNo     : String(20);
  orderDate   : Date;
  status      : String(20) default 'New';
  totalAmount : Decimal(11,2);
  currency    : String(3) default 'EUR';
  customer    : Association to Customers;
  items       : Composition of many OrderItems on items.order = $self;
}

entity OrderItems : cuid {
  order    : Association to Orders;
  product  : String(100);
  quantity : Integer;
  price    : Decimal(11,2);
}