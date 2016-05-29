<?php

class ExperimentAdmin extends ModelAdmin {

    private static $menu_title = 'Experiments';

    private static $url_segment = 'experiments';

    private static $managed_models = array (
        'Experiment'
    );
}