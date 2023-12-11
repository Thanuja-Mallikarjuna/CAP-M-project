namespace books;

using {
    managed,
    cuid,
    sap.common.CodeList,
    Currency
} from '@sap/cds/common';


entity Books : managed, cuid {
    criticality : Integer;
    title    : String(200);
    descr    : String;
    stock    : Integer;
    price    : Decimal;
    currency : Currency;
    author: Association to Authors;
}



entity Authors:managed,cuid{
    name:String(300);
}