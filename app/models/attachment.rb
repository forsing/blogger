class Attachment < ActiveRecord::Base
  belongs_to :article
  has_many :attachments

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }


end
