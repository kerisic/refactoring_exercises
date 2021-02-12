def is_safari?(browser)
  browser.type == "Safari"
end

def tell_browser_type(browser)
  safari_message = "You are using the Safari browser."
  not_safari_message = "You are using a non-Safari browser."

  is_safari?(browser) ? puts safari_message : puts not_safari_message
end
