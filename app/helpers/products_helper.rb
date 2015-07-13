module ProductsHelper

  def short_desc(string)
  	if string.length > 90
  		"#{string[0..90]} ..."
  	else
  		string
  	end
  end
end
