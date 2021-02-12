def tell_browser_type(browser)
  safari = "You are using the Safari browser."
  nonsafari = "You are using a non-Safari browser."
  if(browser.type == "Safari")
    puts safari
  else
    puts nonsafari
  end
end
