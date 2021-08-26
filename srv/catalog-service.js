const cds  = require('@sap/cds');

module.exports =  function(){

    this.after('READ','Books', books => {        
        books.forEach( book => {
            if (book.stock > 100){
                book.title = '(10% off) ' + book.title                
            }
        });
    });

};
