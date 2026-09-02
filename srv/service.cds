using sales from '../db/schema';

service SalesService @(path: '/sales') {
  entity Customers  as projection on sales.Customers;
  entity Orders     as projection on sales.Orders;
  entity OrderItems as projection on sales.OrderItems;
}