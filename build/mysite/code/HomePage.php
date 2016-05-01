<?php
class HomePage extends Page {
	
	public function ListPagesByType($type) {
        
        // get all pages of type
        $pages = $type::get()->limit(5);
        
        // return list if pages exist or false otherwise
        return $pages->count() ? $pages : false;
    }
}
class HomePage_Controller extends Page_Controller {
}