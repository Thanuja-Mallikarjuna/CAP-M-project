using {books as bs} from '../db/schema';

@path: 'service/book'
service BookService{
    entity Books as projection on bs.Books;
    annotate Books with @data.draft.enabled;
    

    entity Authors as projection on bs.Authors;
    annotate Authors with @data.draft.enabled ;
    

}