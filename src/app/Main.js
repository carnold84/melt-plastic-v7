define(['utilities/DOM', 'utilities/Ajax'], function (DOM, Ajax) {
    
    var MODULE = 'Main',
        
        baseUrl; // reference to the base URL of site

    function init () {
        
        console.log(MODULE + ': initialised');
        
        var links = document.querySelector('body'),
            href;
        
        // get the base url from the <base> tag
        /*baseUrl = document.querySelector('base').getAttribute('href');
        
        console.log(baseUrl);
        
        links.addEventListener('click', onLinkClicked);
        
        href = window.location.hash;
        
        if(href !== undefined) {
            
            setRoute(href);
        }*/
    }
    
    function onLinkClicked (event) {
        
        // store target element
        var target = DOM.findParentByTagName(event.target, "A"),
            href;
        
        // check if it's a link
        if (target) {
            
            href = target.getAttribute('href');
            
            href = href !== undefined ? href.replace(baseUrl, '') : undefined;
            
            if (href !== undefined) {
        
                setRoute(href);
                
                window.location.hash = '/' + href;
            }
            
            event.preventDefault();
        }
    }
    
    function setRoute (url) {
        
        console.log('setRoute: ' + url)
    }

    return {

        init : init
    }

});