<?php
class HomePage extends Page {
    
    private static $description = 'Home page to display content from across the site.';
}
class HomePage_Controller extends Page_Controller {
	
	public function ListPagesByType($type) {
        
        // get all pages of type
        $pages = $type::get()->limit(4);
        
        // return list if pages exist or false otherwise
        return $pages->count() ? $pages : false;
    }
	
	public function ListDataByType($type) {
        
        // get all pages of type
        $data = $type::get()->limit(4);
        
        // return list if pages exist or false otherwise
        return $data->count() ? $data : false;
    }
}