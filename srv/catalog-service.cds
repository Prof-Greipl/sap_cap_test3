using my.bookshop as my from '../db/schema';

service CatalogService @(path:'/catalog') {

    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;    
    entity Orders as projection on my.Orders;        
}


