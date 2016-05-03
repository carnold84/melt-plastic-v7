<?php
class HomePage extends Page {
    
    private static $description = 'Home page to display content from across the site.';
	
	public function ListPagesByType($type) {
        
        // get all pages of type
        $pages = $type::get()->limit(3);
        
        // return list if pages exist or false otherwise
        return $pages->count() ? $pages : false;
    }
}
class HomePage_Controller extends Page_Controller {
}