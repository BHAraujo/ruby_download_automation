#language: en
Feature: Validate SHA256 installation Ruby file

    @cleardownload
    Scenario Outline: Validate SHA256 Ruby file
      Given is Ruby site
      When click in link DOWNLOAD
      And download version Ruby <Version>
      And wait 10 seconds for download of file
      Then validate sha256 of the downloaded file

    Examples: Version
      | Version |
      | "2.7.0" |
      | "2.6.5" |
      | "2.5.7" |
