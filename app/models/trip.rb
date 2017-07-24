class Trip < ActiveRecord::Base
    
    has_many:comments, :dependent=> :destroy
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   
   
end
