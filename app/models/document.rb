class Document < ActiveRecord::Base
  has_paper_trail
  
  belongs_to :organisation
  default_scope order('position')
  has_attached_file :attachment
  has_attached_file :icon, :styles => {:thumb => "48x48>"}
  
  validates :name, :position, :organisation_id, :presence => true
  
  default_scope where(:locale => I18n.locale)
  scope :visible, where(:visible => true)

  def self.for_org(organisation)
    where(:organisation_id => organisation)
  end

  attr_accessible :name, :edition, :description, :visible, :position, :organisation_id, :locale, :attachment, :icon
  attr_readonly :organisation_id
end
