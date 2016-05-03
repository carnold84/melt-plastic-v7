<?php

class Projects extends Page {
    
    private static $allowed_children = array('ProjectPage');
    
    private static $description = 'Adds a page to display projects to your website.';
    
    public function getCMSFields() {
        
        $fields = parent::getCMSFields();
        
        // Remove content field
        $fields->removeFieldFromTab("Root.Main","Content");
     
        return $fields;
    }
}

class Projects_Controller extends Page_Controller {
}