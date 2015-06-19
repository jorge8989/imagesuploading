class User < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
#para subir imagenes con paperclip/imagemagick, leer bien la documentacion de paperclip en github,
#en Windows se requieren configuraciones extras, los tutoriales de internet no cubren esa parte