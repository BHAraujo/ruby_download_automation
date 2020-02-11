module Helpers

    def tirar_foto(nome_cenario, status)
      foto = "reports/screenshots/#{status}/#{nome_cenario}.png"
      page.save_screenshot(foto)
      embed(foto, "Screenshot CLIQUE AQUI")
    end

end
