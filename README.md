## PostApp test

PostApp is a simple blog post app with the following models and properties:

- Users # have name, city
- Posts # have an author, title, content, timestamps
- Images # have a parent post
- Comments # a nested/threaded list of comments

Please create a fresh rails app, and JSON API endpoints for the following cases.

#### Posts

- list - return most recent posts, as an array of 
  - id, title, author_name, author_city, array of images
- create
- view an individual post
- update post
- delete a post

#### Images

- add image to a post
- delete image

#### Comments

- list comments for a post
- create a comment
- delete a comment / comment thread you've created.

#### Implementation Notes

Any design decisions not specified herein are fair game. Completed projects will be evaluated on how closely they follow the spec, their design, and cleanliness of implementation.

Completed projects must include a README with enough instructions for evaluators to run / test code.

Please do not get hung up on scaling or persistence issues -- this is a project used to evaluate your design and implementation skills only.

#### Bonus

Two low priority but desirable features are:

1. 'Report' endpoint: return an overview of user activities ( a comment or post ) by city over time. 

2. Unit tests: A solid test suite will prevent regressions and failures in the future.