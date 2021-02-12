def send_correct_page(browser, window)
  if(browser.type == "Safari" && window.size < "768px")
    small = "You are using the Safari browser in a small window."
    return small
  else
    big = "You are not using the Safari browser or have a big window."
    return big
  end
end
