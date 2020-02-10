#language: en
Feature: Validate SHA256 installation Ruby file

    Scenario: Validate SHA256 Ruby file
      Given is Ruby site
      When click in link DOWNLOAD
      And download version Ruby "2.7.0"
