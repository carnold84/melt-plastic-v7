// define dependent files
define([], function() {

    'use strict';

    function createElement (type, class_name) {

        var el = document.createElement(type);
        
        if (class_name !== undefined) {

            el.classList.add(class_name);
        }

        return el;
    }

    function createLink (href, text, class_name) {

        var el = document.createElement('a');
        
        if (href !== undefined) {
            
            el.setAttribute('href', href);
        }
        
        if (text !== undefined) {
            
            el.innerHTML = text;
        }
        
        if (class_name !== undefined) {
            
            el.classList.add(class_name);
        }

        return el;
    }
    
    // helper function. Walks back up tree until anchor tag is found
    function findParentByTagName (element, tagName) {
        
        // the element as parent node
        var parent = element;
        
        // go through all parent nodes
        while (parent !== null && parent.tagName !== tagName.toUpperCase()) {
            parent = parent.parentNode;
        }

        return parent;
    }

    return {
        
        createElement : createElement,
        createLink : createLink,
        findParentByTagName : findParentByTagName
    };

});