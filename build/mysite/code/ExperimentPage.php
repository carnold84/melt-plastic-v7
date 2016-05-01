<?php
class ExperimentPage extends Page {
    
	private static $db = array(
        'Description' => 'HTMLText',
        'Url' => 'Varchar(256)',
        'ExternalUrl' => 'Varchar(256)',
        'DownloadUrl' => 'Varchar(256)',
        'Ver' => 'Decimal'
    );
    
    private static $has_one = array(
        'Thumb' => 'Image'
    );
    
    private static $many_many = array(
        'Tags' => 'Tag'
    );
	
	public function getCMSFields() {
        
		$fields = parent::getCMSFields();
        
		$fields->addFieldToTab('Root.Main', new UploadField('Thumb', 'Thumbnail image for project'));
		$fields->addFieldToTab('Root.Main', new TextField('Url', 'Url of experiment (optional)'));
		$fields->addFieldToTab('Root.Main', new TextField('ExternalUrl', 'External Url of experiment (optional. Overrides Url)'));
		$fields->addFieldToTab('Root.Main', new TextField('DownloadUrl', 'Url of repository/download link (optional)'));
		$fields->addFieldToTab('Root.Main', new TextField('Ver', 'Version Number (optional)'));
        
        $field = TagField::create(
            'Tags',
            'Tags',
            Tag::get(),
            $this->Tags()
        )
            ->setShouldLazyLoad(true) // tags should be lazy loaded
            ->setCanCreate(true);     // new tag DataObjects can be created
        
		$fields->addFieldToTab('Root.Main', $field);
        
        // Remove tagline field
        $fields->removeFieldFromTab('Root.Main', 'Tagline');
        
        // Remove content field
        $fields->removeFieldFromTab('Root.Main', 'Content');
        
        // Remove metadata fields
        $fields->removeFieldFromTab('Root.Main', 'Metadata');
	 
		return $fields;
	}
}

class ExperimentPage_Controller extends Page_Controller {
}