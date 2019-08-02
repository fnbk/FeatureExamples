Feature: Computer Search

  Scenario Outline: Using the Computer Search
    Given I use "<name>" as the computer name
    When I execute the search
    Then it should list "<computer ids>"

    Examples:
        | name  | computer ids |
        | red   | [12, 34] |
        | green | [43]     |
        | blue  | []       |