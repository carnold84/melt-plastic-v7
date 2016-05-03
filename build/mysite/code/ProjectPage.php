<?php
class ProjectPage extends Page {
    
	private static $db = array(
        'Description' => 'HTMLText'
    );
    
    private static $has_one = array(
        'Thumb' => 'Image'
    );
    
    private static $many_many = array(
        'Images' => 'ProjectImage',
        'Tags' => 'Tag'
    );

    // this adds the SortOrder field to the relation table. Please note that the key (in this case 'Images') 
    // has to be the same key as in the $many_many definition!
    private static $many_many_extraFields = array(
        'Images' => array('SortOrder' => 'Int')
    );
    
    private static $can_be_root = false;
	
	public function getCMSFields() {
        
		$fields = parent::getCMSFields();
        
		$fields->addFieldToTab("Root.Images", new SortableUploadField('Images', 'Images for project <br />(Drag thumbnail to reorder)'));
		$fields->addFieldToTab("Root.Main", new UploadField('Thumb', 'Thumbnail image for project'));
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Description', 'Project description'), 'Content');
        
        $field = TagField::create(
            'Tags',
            'Tags',
            Tag::get(),
            $this->Tags()
        )
            ->setShouldLazyLoad(true) // tags should be lazy loaded
            ->setCanCreate(true);     // new tag DataObjects can be created
        
		$fields->addFieldToTab('Root.Tags', $field);
        
        // Remove tagline field
        $fields->removeFieldFromTab("Root.Main","Tagline");
        
        // Remove content field
        $fields->removeFieldFromTab("Root.Main","Content");
	 
		return $fields;
	}
}

class ProjectImage extends Image {
    
    public function EncodedURL() {
        
        return urlencode($this->AbsoluteURL); 
    }
}

class ProjectPage_Controller extends Page_Controller {
}