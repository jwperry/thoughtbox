[Live Heroku Deployment Link](https://polar-escarpment-99993.herokuapp.com/)

# Thoughtbox

"I'll get to trying this out some day, maybe." — Jeff Casimir

"Isn't there already something that does this already?" — Josh Mejia

"I own a yacht." — Richard B. Hathaway

Thoughtbox is a small application for tossing various forms of inspiration for later review. It's not unlike [Delicious](https://delicious.com/) or [Pinboard](http://pinboard.com). It is the spiritual successor of Ideabox.

## Notes

- You're welcome to use any library (e.g. lodash, Underscore, jQuery) you'd like as long as it does not replace the demonstrating proficiency in one of the skill areas addressed by the rubric below.
- For any given page, you can choose to render the initial content on the server _or_ you can provide and API and load it dynamically on the client.

## Iteration 1 - Sign Up, Sign In, and Sign Out

(Less than one hour.)

As an _unauthenticated_ user, when I visit the root of the application, I should be redirected to a page which prompts me to "Log In or Sign Up".

**Nota Bene**: You should aim to complete user auth in the simplest way possible. Using Rails' built-in `has_secure_password` functionality is the most straightforward and recommended way to implement this.

### Sign Up

If I click "Sign Up", I should be taken to a user form where I can
enter an **email address**, a **password**, and a **password confirmation**.

- I cannot sign up with an email address that has already been used.
- Password and confirmation must match.

Upon submitting this information, I should be logged in via a cookie and redirected to the "Links Index" page.

### Sign Out

As an authenticated user viewing the index page, I should see a link to "Sign Out". This should clear my cookies and redirect me back to the login page.

## Iteration 2 - Submitting and Viewing Links

(This section will be testing your basic Rails
CRUD abilities, with some validation logic thrown in.
Aim to complete this section in 90 minutes or less.)

As an _authenticated user_ viewing the main page (`links#index`),
I should see a simple form to submit a link.

The `Link` model should include:

- A _valid_ URL location for the link
- A title for the link

Additionally, all links have a `read` status that is either true or false. This column will default to `false`.

Submitting an invalid link should result in an error message being
displayed.

**Hint:** Use Ruby's built in `URI.parse` method to determine if a
link is a valid URL or not. This [StackOverflow post][urip] has more information. Alternatively, you could use a gem like [this one][vurl].

[urip]: http://stackoverflow.com/questions/7167895/whats-a-good-way-to-validate-links-urls-in-rails
[vurl]: https://github.com/perfectline/validates_url

Once a link has been submitted, loading the index page should
display all of _my_ links.

## Iteration 3 - Updating Link Status

(Aim to complete this section in 30-45 minutes.)

As an authenticated user who has added links to my Thoughtbox,
when I view the link index:

- Next to each unread link I should see an option to "Mark as Read".
  - Clicking this should update the link appropriately and take me immediately back to the my links.
- Next to each read link I should see an option to "Mark as Unread".
  - Clicking this should update the link appropriately and take me immediately back to the my links.
- Read links should be stylistically differentiated from unread links. You could gray them out or use a strike through.

**Note**: Later iterations will require that you be able to update the status of the link _without_ reloading the page. Depending on your approach, it might be easier to implement that now.

### Iteration 4 - Editing Links

(Aim to complete this section in 45 minutes.)

As an authenticated user who has added links to my Thoughtbox,
when I view the link index:

- Each link has an "Edit" button that either takes me to a page to edit the link or allows me to edit the link in place.
- I can edit the title or the URL of the link.
- I cannot change the URL to an invalid URL.

### Iteration 5 - Client-side

(Aim to complete this section in one hour.)

As an authenticated user, I can do the following in the link index without reloading the page:

- Mark a link as read or unread
- Filter the list of links by a search term
- Filter the list by status (e.g. "read" and "unread")
- Sort the list alphabetically

## Detailed Rubric

Subjective evaluation will be made on your work/process according to the following criteria:

### 1. Satisfactory Progress

* 4: (In the real final assessment, this will involve completing multiple supporting features.)
* 3: Developer completes iterations 1 through 5 with few bugs and no missing functionality. (In the real final assessment, this will involve completing one supporting feature.)
* 2: Developer completes iterations 1 through 5 with some bugs or missing functionality.
* 1: Developer fails to complete iterations 1 through 4, or there are significant issues with delivered functionality.

### 2. Ruby Syntax & Style

* 4: Developer is able to write Ruby demonstrating a broad/deep understanding of available language features. Application demonstrates great understanding of Object-Oriented modeling. Developer can speak to choices made in the code and knows what every line of code is doing.
* 3: Developer is able to write idiomatic and effective Ruby. Application makes good use of Object-Oriented modeling with few gaps in class identification and component extraction. Developer can speak to choices made in the code and knows what every line of code is doing.
* 2: Developer is able to accomplish tasks with Ruby code, but lacks attention to broader design and organizational concepts. Developer is not confident in what every line of the code is doing or cannot speak to the choices made.
* 1: Developer is generally able to write Ruby, but code is sloppy, disorganized, or poorly factored.

### 3. Rails Style & API

* 4: Developer is able to craft Rails features that follow the principles of MVC, push business logic down the stack, and skillfully utilizes ActiveRecord to model application state. Developer can speak to choices made in the code and knows what every line of code is doing.
* 3: Developer generally writes clean Rails features that make smart use of Ruby, with some struggles in pushing logic down the stack. The application displays good judgement in modeling the problem as data. Developer can speak to choices made in the code and knows what every line of code is doing.
* 2: Developer struggles with some concepts of MVC.  Developer is not confident in what every line of the code is doing or cannot speak to the choices made.
* 1: Developer struggles with MVC and pushing logic down the stack
* 0: Developer shows little or no understanding of how to craft Rails applications

### 4. Javascript Syntax & Style

* 4: Developer uses elegant and idiomatic Javascript to accomplish common tasks. Demonstrates solid understanding of function passing and manipulation. Developer can speak to choices made in the code and knows what every line of code is doing.
* 3: Developer writes solid Javascript code using common patterns and idioms. Code is organized appropriately within objects and functions. Developer can speak to choices made in the code and knows what every line of code is doing.
* 2: Developer can accomplish basic tasks with Javascript but implementation is largely copy/pasted or non-idiomatic. Developer is not confident in what every line of the code is doing or cannot speak to the choices made.
* 1: Developer can manipulate Javascript syntax but implementation is buggy or inconsistent.
* 0: Developer shows little or no understanding of Javascript syntax and idioms

### 5. Testing

* 4: Developer excels at taking small steps and using the tests for *both* design and verification. Developer uses integration tests, controller tests, and model tests where appropriate.
* 3: Developer writes tests that are effective validation of functionality, but don't drive the design. Developer uses integration tests, controller tests, and model tests where appropriate.
* 2: Developer uses tests to guide development, but implements more functionality than the tests cover. Application is missing tests in a needed area such as model, integration, or controller tests.
* 1: Developer is able to write tests, but they're written after or in the middle of implementation.
* 0: Developer does not use tests to guide development.

### 6. User Interface

* 4: The application is pleasant, logical, and easy to use
* 3: The application has many strong pages/interactions, but a few holes in lesser-used functionality
* 2: The application shows effort in the interface, but the result is not effective
* 1: The application is confusing or difficult to use

### 7. Workflow

* 4: The developer effectively uses Git branches and many small, atomic commits that document the evolution of their application.
* 3: The developer makes a series of small, atomic commits that document the evolution of their application. There are no formatting issues in the code base.
* 2: The developer makes large commits covering multiple features that make it difficult for the evaluator to determine the evolution of the application.
* 1: The developer commited the code to version control in only a few commits. The evaluator cannot determine the evolution of the application.
* 0: The application was not checked into version control.