<?php

class ExperimentHolder extends Page {
    
    private static $allowed_children = array('ExperimentPage');
    
    public function getCMSFields() {
        
        $fields = parent::getCMSFields();
     
        return $fields;
    }
}

class ExperimentHolder_Controller extends Page_Controller {
}