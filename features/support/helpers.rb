module Helpers

    def tirar_foto(nome_cenario)
      @path = "reports/screenshots/#{nome_cenario}.png"
      page.save_screenshot(@path)

      Allure.add_attachment(
       name: "filename",
       source: File.open(@path),
       type: Allure::ContentType::PNG,
      test_case: true
      )
      embed(@path, "Screenshot CLIQUE AQUI")
    end

end
