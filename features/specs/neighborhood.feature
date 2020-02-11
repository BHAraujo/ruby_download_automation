Feature: Validate return information neighborhood

      @api
      Scenario Outline: Validate information return body
          Given request by pass "<cep>"
          Then http status code 200
          Then validate return body
          | cep      | logradouro   | bairro   | localidade   | uf   |
          | <cep>    | <logradouro> | <bairro> | <localidade> | <uf> |

      Examples: Datas
        | cep      | logradouro         | bairro          | localidade  | uf |
        | 01310200 | Avenida Paulista   | Bela Vista      | São Paulo   | SP |
        | 04151100 | Praça Leonor Kaupa | Bosque da Saúde | São Paulo   | SP |
