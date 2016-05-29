<?php

class ProjectAdmin extends ModelAdmin {

    private static $menu_title = 'Projects';

    private static $url_segment = 'projects';

    private static $managed_models = array (
        'Project'
    );
}