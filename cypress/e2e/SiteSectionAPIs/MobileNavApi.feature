Feature: Expose mobile navigation as API

## This tests a number of things:
##  * A mobile nav is returned when it is marked as is main nav root,
##    but hide in mobile nav
##  * The theme's depth to display is honored. (4 Levels) NOTE: The
##    tree should be 5 levels deep in total. We don't display the
##    root. E.G., A.1.1.1 should display, but none of the children
##  * A.3.2 should not display (nor its child) as it is marked as
##    hide_in_mobile_nav
##  * A.4 has a path that does not match /api-test/a/4 because the
##    the field_landing_page's target has a URL of /api-test/b/4/1
##  * B.1 and B.3 should not display because those nodes do not have
##    a field_landing_page
##  * B.2 and B.4 should not display because those nodes do have a
##    field_landing_page that is unpublished
Scenario: Site requests mobile nav root
Given user makes json request to "/taxonomy/term/1500000/mobile-nav"
Then the json response matches the contents of "MobileNavApi.json"

## TODO: Scenario for 400 response for a node not matching field_main_nav_root