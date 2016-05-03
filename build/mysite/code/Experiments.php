<?php

class Experiments extends Page {
    
    private static $allowed_children = array('ExperimentPage');
    
    private static $description = 'Adds a page to display experiments to your website.';
    
    public function getCMSFields() {
        
        $fields = parent::getCMSFields();
     
        return $fields;
    }
}

class Experiments_Controller extends Page_Controller {
}