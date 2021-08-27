using from './catalog-service';

annotate CatalogService.Books with @(
    UI: {
        Identification: [ {Value: title} ],
        SelectionFields: [ title ],
        LineItem:[
            {Value: ID},
            {Value: title},
            {Value: author.name},            
            {Value: stock},        
        ],

        HeaderInfo: {
            TypeName: 'Book',
            TypeNamePlural: 'Books',
            Title: {Value: title},
            Description: {Value: descr}            
        }
    }      
);

annotate CatalogService.Books with {
    ID @title: 'ID' @UI.HiddenFilter;
    title @title: 'Titel';
    author @title: 'Author';
    stock @title: 'Stock';    
}

annotate CatalogService.Authors with {
    ID @title: 'ID' @UI.HiddenFilter;
    name @title: 'Name';   
}



