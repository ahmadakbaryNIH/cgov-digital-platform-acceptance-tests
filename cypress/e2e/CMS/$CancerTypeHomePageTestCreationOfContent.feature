Feature: As a cms user I want to be able to create Cancer Type Homepage content type to promote Cancer Type Homepage

Scenario: User is adding new Cancer Type Homepage content type
    Given user is navigating to "/user/login"
    When user enters credentials
    And user clicks "Log in" button        
    Then user is logged in and the user name "admin" is displayed in the toolbar
    And the tool bar appears at the top
    When user clicks on "Content" tab
    And user clicks on "Add content" action button
    And user clicks on "Cancer Type Homepage" content type
    Then page title is "Create Cancer Type Homepage"
    When user selects test site section
    And user fills out the following fields
        | fieldLabel               | value                                                   | field_name                     |
        | Pretty URL               | cancer-type-homepage                                    | field_pretty_url               |
        | Page Title               | Automated Test Cancer Type Homepage Patient             | title                          |
        | Browser Title            | Automated Test Cancer Type Homepage - Browser Title     | field_browser_title            |
        | Card Title               | Automated Test Cancer Type Homepage - Card Title        | field_card_title               |
        | Meta Description         | Automated Cancer Type Homepage Meta Description         | field_page_description         |
        | Feature Card Description | Automated Test Cancer Type Homepage - Feature Card Desc | field_feature_card_description |
    And user enters "Cancer Type Homepage List Description" into "List Description" text field
    And user selects "Add CTHP Overview Card" from "CTHP Cards" dropdown
    And user fills out the following fields
        | fieldLabel      | value         | field_name                                          |
        | CTHP Card Title | Test Overview | field_cthp_cards[0][subform][field_cthp_card_title] |
    And user selects "Overview" from CTHP Card Theme dropdown
    And user fills out Overview Card Text field text area with "Description of Overview Card of CTHP content type"
    Then user saves the content page

Scenario: Adding guide card
    Given user is navigating to "/user/login"
    When user enters credentials
    And user clicks "Log in" button
    Then user is logged in and the user name "admin" is displayed in the toolbar
    And the tool bar appears at the top
    When user clicks on "Content" tab
    And user clicks on title with url "cancer-type-homepage" from the list of content
    And user clicks on the tool bar status green button "Draft"
    And user clicks "View in edit form" button from other actions
    And user selects "Add CTHP Guide Card" from "CTHP Cards" dropdown
    And user fills out the following fields
        | fieldLabel      | value          | field_name                                          |
        | CTHP Card Title | Test Treatment | field_cthp_cards[1][subform][field_cthp_card_title] |
    And user selects "Treatment" from 2 "CTHP Card Theme" dropdown
    And user fills out "CTHP Guide Card Description field" text area with "Description of Guide Card of CTHP content type"
    And user fills out the following fields
        | fieldLabel       | value                                  | field_name                                                          |
        | PDQ Link Heading | PDQ Treatment Information for Patients | field_cthp_cards[1][subform][field_cthp_pdq_link_heading][0][value] |
    And user clicks on "PDQ Links" to add PDQ summary
    And user clicks on "Select summary" button to select PDQ sumamry
    And user filters summaries list by "English" language and clicks "Apply" button
    And user selects 1 PDQ Summary from the list of summaries
    And user clicks on "Select summary" button to select item
    And user remembers the title of selected summary for further verification
    And user selects "Add Internal Link" from "View More Information" dropdown
    And user clicks on "Link" link in the "CTHP Guide Card" card area
    And user clicks on "Select content" button in the "Internal Link" text area
    And user selects "Article to test Related Resources" item from the list
    And user clicks on "Select content" button to select item
    And browser waits
    And user selects "Add External Link" from "View More Information" dropdown
    Then "External Link" section appears
    And user fills out the following fields
        | fieldLabel | value                  | field_name                                                                                          |
        | Link       | https://www.google.com | field_cthp_cards[1][subform][field_cthp_view_more_info][1][subform][field_external_link][0][uri]    |
        | Title      | Google Link Guide Card | field_cthp_cards[1][subform][field_cthp_view_more_info][1][subform][field_override_title][0][value] |
    And user selects "Add Media Link" from "View More Information" dropdown
    Then "Media Link" section appears
    And user clicks on "Link" button to link to a media in "CTHP Guide Card" card area
    And user clicks on "Select media" to choose a resource to link
    And user selects "Test File for Related Resources" item from the media list
    And user clicks on "Select media" button to select media
    And browser waits
    And user fills out the following fields
        | fieldLabel     | value                                 | field_name                                                                                          |
        | Override Title | Media Link Override Title Guide cards | field_cthp_cards[1][subform][field_cthp_view_more_info][2][subform][field_override_title][0][value] |
    Then user saves the content page

# Scenario: Adding Internal Feature card
#     Given user is navigating to "/user/login"
#     When user enters credentials
#     And user clicks "Log in" button
#     Then user is logged in and the user name "admin" is displayed in the toolbar
#     And the tool bar appears at the top
#     When user clicks on "Content" tab
#     And user clicks on title with url "cancer-type-homepage" from the list of content
#     And user clicks on the tool bar status green button "Draft"
#     And user clicks "View in edit form" button from other actions
#     And user selects "CTHP Internal Feature Card" from "CTHP Cards" dropdown
#     And user fills out the following fields
#         | fieldLabel      | value                    | field_name                                          |
#         | CTHP Card Title | Test Causes & Prevention | field_cthp_cards[2][subform][field_cthp_card_title] |
#     And user selects "Causes & Prevention" from 3 "CTHP Card Theme" dropdown
#     And user clicks on "Featured Content" link in the "CTHP Internal Feature Card" card area
#     And user clicks on "Select content" button in the "CTHP Internal Feature Card" card area
#     And user selects "Article to test Related Resources" item from the list
#     And user clicks on "Select content" button to select item
#    And user fills out the following fields
#         | fieldLabel      | value                    | field_name                                          |
#         | Override Card Description | Article to test Related Resources | field_cthp_cards[2][subform][field_cthp_override_description][0][value] |
#     And browser waits
#     Then user saves the content page

# Scenario: Adding External feature card
#     Given user is navigating to "/user/login"
#     When user enters credentials
#     And user clicks "Log in" button
#     Then user is logged in and the user name "admin" is displayed in the toolbar
#     And the tool bar appears at the top
#     When user clicks on "Content" tab
#     And user clicks on title with url "cancer-type-homepage" from the list of content
#     And user clicks on the tool bar status green button "Draft"
#     And user clicks "View in edit form" button from other actions
#     And user selects "CTHP External Feature Card" from "CTHP Cards" dropdown
#     And user fills out the following fields
#         | fieldLabel      | value           | field_name                                          |
#         | CTHP Card Title | Test Statistics | field_cthp_cards[3][subform][field_cthp_card_title] |
#     And user selects "Survival Rates & Prognosis" from 4 "CTHP Card Theme" dropdown
#     And user fills out the following fields
#         | fieldLabel     | value                                      | field_name                                                              |
#         | External link  | https://www.google1.com                    | field_cthp_cards[3][subform][field_cthp_featured_url][0][uri]           |
#         | Override Title | Override Card Desc - External Feature Card | field_cthp_cards[3][subform][field_cthp_override_description][0][value] |
#     Then user saves the content page

# Scenario: Adding video card
#     Given user is navigating to "/user/login"
#     When user enters credentials
#     And user clicks "Log in" button
#     Then user is logged in and the user name "admin" is displayed in the toolbar
#     And the tool bar appears at the top
#     When user clicks on "Content" tab
#     And user clicks on title with url "cancer-type-homepage" from the list of content
#     And user clicks on the tool bar status green button "Draft"
#     And user clicks "View in edit form" button from other actions
#     And user selects "CTHP Video Card" from "CTHP Cards" dropdown
#     And user fills out the following fields
#         | fieldLabel      | value           | field_name                                          |
#         | CTHP Card Title | Test Video Card | field_cthp_cards[4][subform][field_cthp_card_title] |
#     And user selects "Screening" from 5 "CTHP Card Theme" dropdown
#     And user clicks on "Video" button to link to a media
#     And user clicks on "Select video" to choose a resource to link
#     And user selects 1 Video from the list of videos
#     And user clicks on "Select media" button to select media
#     And user remembers the title of selected video for further verification
#     And user selects "Add Internal Link" from "Target URL" dropdown
#     And user clicks on "Link" link in the "CTHP Video Card" card area
#     And user clicks on "Select content" button in the "CTHP Video Card" card area
#     And user selects "Article to test Related Resources" item from the list
#     And user clicks on "Select content" button to select item
#     Then user saves the content page

# Scenario: Adding research card
#     Given user is navigating to "/user/login"
#     When user enters credentials
#     And user clicks "Log in" button
#     Then user is logged in and the user name "admin" is displayed in the toolbar
#     And the tool bar appears at the top
#     When user clicks on "Content" tab
#     And user clicks on title with url "cancer-type-homepage" from the list of content
#     And user clicks on the tool bar status green button "Draft"
#     And user clicks "View in edit form" button from other actions
#     And user selects "CTHP Research Card" from "CTHP Cards" dropdown
#     And user fills out the following fields
#         | fieldLabel      | value         | field_name                                          |
#         | CTHP Card Title | Test Research | field_cthp_cards[5][subform][field_cthp_card_title] |
#     And user selects "Research" from 6 "CTHP Card Theme" dropdown
#     And user clicks on "RESEARCH PAGE" link in the "CTHP Research Card" card area
#     And user clicks on "Select content" button in the "CTHP Research Card" card area
#     And user filters research list by "Cancer Research List Page" type and clicks "Apply" button
#     And user selects 1 research page from the list
#     And user clicks on "Select content" button to select item
#     And user remembers title of selected Cancer Research List Page for future verification
#     And browser waits
#     Then user saves the content page

# Scenario: Adding block and raw html cards
#     Given user is navigating to "/user/login"
#     When user enters credentials
#     And user clicks "Log in" button
#     Then user is logged in and the user name "admin" is displayed in the toolbar
#     And the tool bar appears at the top
#     When user clicks on "Content" tab
#     And user clicks on title with url "cancer-type-homepage" from the list of content
#     And user clicks on the tool bar status green button "Draft"
#     And user clicks "View in edit form" button from other actions
#     And user selects "CTHP Block Card" from "CTHP Cards" dropdown
#     And user fills out the following fields
#         | fieldLabel      | value           | field_name                                          |
#         | CTHP Card Title | Test Block Card | field_cthp_cards[6][subform][field_cthp_card_title] |
#     And user selects "General Resources on Coping" from 7 "CTHP Card Theme" dropdown
#     And user types "coping" in the autosuggest field of "CTHP Research Card" card area
#     When user selects 1 result from the list of autosuggest
#     And user selects "CTHP Raw HTML Card" from "CTHP Cards" dropdown
#     And user fills out the following fields
#         | fieldLabel      | value              | field_name                                          |
#         | CTHP Card Title | Test Raw HTML Card | field_cthp_cards[7][subform][field_cthp_card_title] |
#     And user selects "Genetics" from 8 "CTHP Card Theme" dropdown
#     And user clicks on "Source" tool icon in the html content tool bar
#     And user enters "<div>This is to test Raw Html Content in CTHP Raw HTML Card</div>" into source text field
#     And user selects "Include in search" from "Search Engine Restrictions" dropdown
#     And user selects "Published" from "Save as" dropdown
#     When user saves the content page