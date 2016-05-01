<?php

class ProjectHolder extends Page {
    
    private static $allowed_children = array('ProjectPage');
    
    public function getCMSFields() {
        
        $fields = parent::getCMSFields();
        
        // Remove content field
        $fields->removeFieldFromTab("Root.Main","Content");
     
        return $fields;
    }
}

class ProjectHolder_Controller extends Page_Controller {
}