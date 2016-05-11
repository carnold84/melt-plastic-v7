var responsiveMenu = (function ($) {

    var elOpenBtn,
        elCloseBtn,
        elContent,
        transitions;

    function init () {

        elOpenBtn = $('#responsive-menu-btn');
        elCloseBtn = $('#responsive-menu-close-btn');
        elContent = $('#responsive-menu-content');

        transitions = $('html').hasClass('csstransitions');

        if (!transitions) {

            elContent.addClass('hide');
        }

        elOpenBtn.on('click', onOpenHandler);
        elCloseBtn.on('click', onCloseHandler);
    }

    function onOpenHandler (evt) {

        elContent.removeClass('hide');

        elContent.addClass('show');

        evt.preventDefault();
        evt.stopPropagation();
    }

    function onCloseHandler (evt) {

        if (transitions) {

            elContent.on('transitionEnd', onHidden);

            elContent.removeClass('show');

        } else {

            elContent.addClass('hide');
        }

        evt.preventDefault();
        evt.stopPropagation();
    }

    function onHidden (evt) {

        elContent.off('transitionEnd', onHidden);

        elContent.addClass('hide');
    }

    return {

        init : init
    }

})(jQuery);