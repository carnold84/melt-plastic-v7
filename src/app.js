requirejs.config({

    baseUrl : '../src/app', // dev environment
    paths : {
        
        utilities : '../utilities'
    }
});

require(['ResponsiveMenu', 'Main'], function (ResponsiveMenu, Main) {
    
    "use strict";
        
    // initialise the menu
    ResponsiveMenu.init();
    
    // initialise main app
    Main.init();
});