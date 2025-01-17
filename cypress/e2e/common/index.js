import { And, Then } from "cypress-cucumber-preprocessor/steps";

Given('user is navigating to {string}', (a) => {
  cy.visit(a);
});

Then("browser title is {string}", (title) => {
  cy.title().should('eq', title);
});

Given('user is navigating to {string} with a 404 status', (a) => {
  Cypress.on('uncaught:exception', (err, runnable) => {
    // returning false here to Cypress from
    // failing the test
    return false;
  });
  cy.visit(a, { failOnStatusCode: false });
});

And('browser waits', () => {
  cy.wait(2000);
});

And('page title is {string}',(title)=>{
cy.get(`h1:contains('${title}')`).should('be.visible');
});
