var main = (function () {

    function init () {

        responsiveMenu.init();
    }

    return {

        init : init
    }

})();

$(document).ready(main.init());