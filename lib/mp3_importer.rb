require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
     song = Dir["#{@path}/*.mp3"]
     song.collect do |path|
       path.gsub!("./spec/fixtures/mp3s/", "")
     end
   end

   def import
     self.files.each do |file_name|
       Song.new_by_filename(file_name)
     end
   end

end
