class Gif
  attr_reader :gif_id,
              :gif_url,
              :gif

  def initialize(hash)
    @gif_id  = hash[:id]
    @gif_url = hash[:url]
    @gif     = hash[:images][:preview_webp][:url]
  end

end
