using BookService as service from '../../srv/books-service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Label : 'price',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },
    ]
);
annotate service.Books with {
    Author @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Author_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'Book title',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Book Overview',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Book Details',
            ID : 'booktitle',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'book Details',
                    ID : 'bookdetails',
                    Target : '@UI.FieldGroup#bookdetails',
                },],
        },
    ]
);
annotate service.Books with @(
    UI.FieldGroup #bookdetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'Book Overview',
            },{
                $Type : 'UI.DataField',
                Value : stock,
                Label : 'stock',
            },{
                $Type : 'UI.DataField',
                Value : price,
                Label : 'price',
            },{
                $Type : 'UI.DataField',
                Value : currency.code,
            },{
                $Type : 'UI.DataField',
                Value : author.name,
                Label : 'name',
            },],
    }
);
annotate service.Books with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Book Title',
            ID : 'BookTitle',
            Target : '@UI.FieldGroup#BookTitle',
        },
    ],
    UI.FieldGroup #BookTitle : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : 'price',
            },],
    }
);
annotate service.Books with @(
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
    }
);
