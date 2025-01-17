Feature: Left Navigation tests

    Scenario: Verify that left navigation menu is visible on Desktop
        Given user is navigating to "/about-cancer/coping"
        Then left navigation menu is visible
        And parent label is "Coping with Cancer"
        And all the  menu children are visible
        And all of the menu gradchildren are not visible

    Scenario Outline: Verify expected number of child elements for each navigation node on desktop
        Given user is navigating to "<url>"
        Then left navigation menu is visible
        And the number of children is <count>
        Examples:
            | url                                      | count |
            | /about-cancer/coping                     | 1     |
            | /about-cancer/coping/feelings            | 1     |
            | /about-cancer/coping/feelings/relaxation | 0     |

    Scenario: Verify parent node is expanded on desktop
        Given user is navigating to "/about-cancer/coping/feelings/relaxation"
        Then the parent node is expanded

    Scenario Outline: Verify expected number of child elements for each navigation node on mobile and tablet
        Given screen breakpoint is set to "<breakpoint>"
        Given user is navigating to "<url>"
        When user clicks on site section menu
        And the number of children is <count>
        Examples:
            | breakpoint | url                                      | count |
            | tablet     | /about-cancer/coping                     | 1     |
            | mobile     | /about-cancer/coping/feelings            | 1     |
            | tablet     | /about-cancer/coping/feelings/relaxation | 0     |