# A Rails Crowdfunding Platform

You will build a basic crowdfunding platform using the Ruby on Rails framework.

## A Reward Based Crowdfunding Platform

[What is Crowdfunding?](https://en.wikipedia.org/wiki/Crowdfunding)

[What is reward based crowdfunding?](https://www.nerdwallet.com/blog/small-business/reward-crowdfunding/)

## Instructions

1. Each crowdfunding project should have a name, description, funding goal, start date and end date.
2. It can also have an image and a larger description detailing the the story on how the project came about.
3. Each crowdfunding project must belong to a user.
4. A crowdfunding project can belong to multiple project categories.
5. A crowdfunding project must have at least one reward(but can have multiple).
6. A reward should have the donation amount, gift and a limit on the number of people allowed to choose it.
7. Each project should have it's own page which has its name, description, funding goal, start date, end date and any additional attributes. If the project is active(current date is after start date and before end date), there should be a button to support the project. If it is not active, then the support button should be grayed out. This page should also show how many people have supported the project and how much money has been raised so far. It should also have a section that shows all the rewards for the project: the donation amount, gift that the user will receive and how many people have selected that reward when they supported the project.
8. When a user chooses to support a project and clicks the button, if they are not authenticated yet, they should required to login/sign up to continue.
9. If they are authenticated, they are asked the amount they want to donate. They also pick a payment type from one of their payment types that was previously set up and a reward from the available rewards for that project(make sure to only show the rewards where the number of people who can choose it has not exceeded the limit on that reward). A user does not have to choose a reward, it is optional. This is because even if all the rewards have reached their limit, a user should still be able to support a project. So there should be a way for a user to donate to a project without picking a reward.
10. If the user doesn't have any payment types set up, show a message that tells the user to set up a payment type before supporting projects.
11. Once they have successfully supported a project, the user should be taken back to that project's page.
12. The homepage should have 10 active projects: the name, the image and the description. They should be ordered from the one that will end first to the one that will end last.
13. There should be a navigation bar on all pages. It should have your company name/logo(give your company a fun name) on the left, a dropdown with all the available project categories right next to the logo. A search bar in the middle, authentication links(login and signup) on the right.
14. When a user clicks on the logo/name in the nav bar, they should always be taken to the home page.
15. When a user chooses a project category from the dropdown in the nav bar, they should be shown all active projects within that category.
16. When a user searches using the search bar, any active projects with the search term in the name should be shown on a search results page.
17. When a user is logged in, the links for `sign up` and `log in` in the nav bar should change to `log out` and `my account`.
18. The user's account page should have their first name, last name, email and address. There should be three sections below this. The first is for the user's payment types. It should have a button to add a new payment type. And a list of all the payment types for that user with links to edit and delete next to each one. The second should be a section for all the projects the user has started on the site ordered by date created. The projects that are not active anymore should be grayed out. This section should have a button at the top for creating a new project. The third section is for all projects the user has supported. They should be ordered by when the user made the donation. Once again, the projects that are not active anymore should be grayed out.
19. The second section on the `my account` page with the projects the user has started should have edit and delete links for those projects that have not become active yet(start date is after the current date). If the project is currently active, it should only have an edit link. If the project finished at a previous date(grayed out), it should not have an edit or a delete link.
20. Authentication is only required for viewing the `my account` page, any functionality available from that page(such as creating/editing payment types, creating/editing projects) and for supporting a project.

## Bonus

1. Allow a user to upload a profile picture if they are logged in.
2. Add Bootstrap and create a consistent color scheme and style throughout your website.
3. Add functionality for users to bookmark projects if authenticated. This means there should a bookmark button on the project page(that's grayed out if they are not logged in). And a section on the `my account` page that shows the user's bookmarked projects with options to delete them.
4. Add an `about us` link in the nav bar which takes the user to a page that tells them about the company and shows a team photo.
5. Take the multiple sections on the `my account` page and either separate them into different pages or tabs.
6. On the individual projects page, where the rewards are listed, gray out the ones where the limit for people has been reached. And the rewards that are still available should be clickable. When the user clicks on it, they should be taken to the same page as when they click to support a project. But the reward they picked should already be selected. Keep in mind that a user needs to be authenticated before they are allowed to support a project.
7. Add functionality for multiple comments for each project. This should appear at the bottom of the project page in a comments section. A user does not have to be authenticated to view all comments but they must be logged in to write a comment.

## Hints

1. Go explore some of the reward based crowdfunding platforms like [Kickstarter](https://www.kickstarter.com/), [Indiegogo](https://www.indiegogo.com/en), [GoFundMe](https://www.gofundme.com/) to get a basic idea of how they work. Some of these are built using Ruby/Rails.
2. Once you understand the requirements, draw an ERD that will allow you to visualize how your entities will interact with each other and the user.
3. Break down the application into smaller pieces and create tickets that will allow you to keep track of functionality that needs to be implemented. When creating tickets, start out high level and keep breaking it down until each ticket is small and approachable.
