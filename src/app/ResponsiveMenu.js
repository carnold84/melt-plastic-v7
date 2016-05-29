define([], function () {

    var MODULE = 'ResponsiveMenu',
        
        elOpenBtn,
        elCloseBtn,
        elContent,
        transitions;

    function init () {
        
        console.log(MODULE + ': initialised');

        elOpenBtn = document.querySelector('#responsive-menu-btn');
        elCloseBtn = document.querySelector('#responsive-menu-close-btn');
        elContent = document.querySelector('#responsive-menu-content');

        transitions = document.querySelector('html').classList.contains('csstransitions');

        if (!transitions) {

            elContent.classList.add('hide');
        }

        elOpenBtn.addEventListener('click', onOpenHandler);
        elCloseBtn.addEventListener('click', onCloseHandler);
    }

    function onOpenHandler (evt) {

        elContent.classList.remove('hide');

        elContent.classList.add('show');

        evt.preventDefault();
        evt.stopPropagation();
    }

    function onCloseHandler (evt) {

        if (transitions) {

            elContent.addEventListener('transitionEnd', onHidden);

            elContent.classList.remove('show');

        } else {

            elContent.classList.add('hide');
        }

        evt.preventDefault();
        evt.stopPropagation();
    }

    function onHidden (evt) {

        elContent.removeEventListener('transitionEnd', onHidden);

        elContent.classList.add('hide');
    }

    return {

        init : init
    }

});