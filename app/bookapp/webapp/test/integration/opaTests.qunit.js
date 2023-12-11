sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ibm/com/bookapp/test/integration/FirstJourney',
		'ibm/com/bookapp/test/integration/pages/BooksList',
		'ibm/com/bookapp/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ibm/com/bookapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);