Feature: Expose section navigation as API

## This tests:
##   * 5 levels deep Should not show A.1.1.1.1.1.1
Scenario: Section Nav defaults to 5 levels
Given user makes json request to "/taxonomy/term/1500002/section-nav"
Then the json response matches the contents of "5LevelsDeep.json"

## This tests:
##   * Only 2 levels are show. A.2.1.1 should not be shown
##   * A.2.2 should not be shown because it was marked hide_in_section_nav
Scenario: Section nav honors depth of 2
Given user makes json request to "/taxonomy/term/1500009/section-nav"
Then the json response matches the contents of "2LevelsDeep.json"

## This tests:
##   * A section is marked as hide in section nav, but is a Section nav root.
##   P.S. It should show - the hide_in_section_nav indicates it should not show
##     in a parent nav.
Scenario: Shows a section nav when it has been marked as a root, but hide in nav
Given user makes json request to "/taxonomy/term/1500012/section-nav"
Then the json response matches the contents of "SNNoShow.json"

## TODO: 