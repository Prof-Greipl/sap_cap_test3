using Books from '../db/schema';
using Authors from '../db/schema';

service CatalogService @(path:'/browse') {

  /** For displaying lists of Books */
  @readonly entity ListOfBooks as projection on Books
  excluding { descr };

}