using {books as bs} from '../db/schema';

@path: 'service/book'
service BookService{
    entity Books @(restrict: [
        {
            grant: [
                'READ',
                'POST',
                'PUT',
                'PATCH'
            ],
            to   : 'Admin'
        },
        {


            grant: ['READ'],
            to   : 'Viewer'
        }
    ])
    as projection on bs.Books;
    annotate Books with @data.draft.enabled;
    

    entity Authors @(restrict: [
        {
            grant: [
                'READ',
                'POST',
                'PUT',
                'PATCH'
            ],
            to   : 'Admin'
        },
        {


            grant: ['READ'],
            to   : 'Viewer'
        }
    ])as projection on bs.Authors;
    annotate Authors with @data.draft.enabled ;
    

}