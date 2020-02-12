class BasePage

  def allure_take_screenshot(driver, path_name=PATH_REPORT_SCREENSHOTS, name_type)
    screenshot = "#{path_name}#{name_type}"
    driver.save_screenshot(screenshot)

      if File.exist?(screenshot) == true
        Allure.add_attachment(
        name: "filename",
        source: File.open(screenshot),
        type: Allure::ContentType::PNG,
        test_case: true
      )
    end
  end

end
