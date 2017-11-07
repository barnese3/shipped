Color Scheme:
-----------------------------------------------------------
https://coolors.co/ffffff-00171f-003459-007ea7-00a8e8


Routes:
------------------------------------------------------------
boat_jobs_path	GET	/boat_jobs(.:format)	
boat_jobs#index

POST	/boat_jobs(.:format)	
boat_jobs#create

new_boat_job_path	GET	/boat_jobs/new(.:format)	
boat_jobs#new

edit_boat_job_path	GET	/boat_jobs/:id/edit(.:format)	
boat_jobs#edit

boat_job_path	GET	/boat_jobs/:id(.:format)	
boat_jobs#show

PATCH	/boat_jobs/:id(.:format)	
boat_jobs#update

PUT	/boat_jobs/:id(.:format)	
boat_jobs#update

DELETE	/boat_jobs/:id(.:format)	
boat_jobs#destroy

new_company_session_path	GET	/companies/sign_in(.:format)	
devise/sessions#new

company_session_path	POST	/companies/sign_in(.:format)	
devise/sessions#create

destroy_company_session_path	DELETE	/companies/sign_out(.:format)	
devise/sessions#destroy

new_company_password_path	GET	/companies/password/new(.:format)	
devise/passwords#new

edit_company_password_path	GET	/companies/password/edit(.:format)	
devise/passwords#edit

company_password_path	PATCH	/companies/password(.:format)	
devise/passwords#update

PUT	/companies/password(.:format)	
devise/passwords#update

POST	/companies/password(.:format)	
devise/passwords#create

cancel_company_registration_path	GET	/companies/cancel(.:format)	
devise/registrations#cancel

new_company_registration_path	GET	/companies/sign_up(.:format)	
devise/registrations#new

edit_company_registration_path	GET	/companies/edit(.:format)	
devise/registrations#edit

company_registration_path	PATCH	/companies(.:format)	
devise/registrations#update

PUT	/companies(.:format)	
devise/registrations#update

DELETE	/companies(.:format)	
devise/registrations#destroy

POST	/companies(.:format)	
devise/registrations#create

companies_path	GET	/companies(.:format)	
companies#index

POST	/companies(.:format)	
companies#create

new_company_path	GET	/companies/new(.:format)	
companies#new

edit_company_path	GET	/companies/:id/edit(.:format)	
companies#edit

company_path	GET	/companies/:id(.:format)	
companies#show

PATCH	/companies/:id(.:format)	
companies#update

PUT	/companies/:id(.:format)	
companies#update

DELETE	/companies/:id(.:format)	
companies#destroy

jobs_path	GET	/jobs(.:format)	
jobs#index

POST	/jobs(.:format)	
jobs#create

new_job_path	GET	/jobs/new(.:format)	
jobs#new

edit_job_path	GET	/jobs/:id/edit(.:format)	
jobs#edit

job_path	GET	/jobs/:id(.:format)	
jobs#show

PATCH	/jobs/:id(.:format)	
jobs#update

PUT	/jobs/:id(.:format)	
jobs#update

DELETE	/jobs/:id(.:format)	
jobs#destroy

boats_path	GET	/boats(.:format)	
boats#index

POST	/boats(.:format)	
boats#create

new_boat_path	GET	/boats/new(.:format)	
boats#new

edit_boat_path	GET	/boats/:id/edit(.:format)	
boats#edit

boat_path	GET	/boats/:id(.:format)	
boats#show

PATCH	/boats/:id(.:format)	
boats#update

PUT	/boats/:id(.:format)	
boats#update

DELETE	/boats/:id(.:format)	
boats#destroy

root_path	GET	/	
home#index


Project Requirements:
----------------------------------------------------------------
Assignment:

Part A: Validations

Create a Rails application for shippers to help them organize all of the ships in their fleet, with a user login system using Devise. The application should be able to, at its most basic, allow users to:

Sign up, login and logout
Create new boats that will associate with the user’s profile. Boats must have the following attributes
Name
Amount of containers its able to ship
Location (stored as a string)
Create new jobs. Each job must have the following attributes
Description
Origin (stored as a string)
Destination (stored as a string)
Cost
Amount of containers needed for job
Assign boats to jobs
Each boat can be assigned to multiple jobs
Each job can have multiple boats assigned to it
Hint: Think Many-to-many relationship
Once you have the basics setup, add some validations:

Boats:
Must have a unique name
Locations must be pulled from a valid list of locations (use a hard-coded list)

Jobs:

Must have a unique name
Cost must be above $1000 for each job
Description must be at least 50 characters
Origin and destinations must be pulled from a valid list of locations (use a hard-coded list)
Part B: Rails UJS and Paperclip

Now that you’ve learned some more advanced features of RoR, try adding the following behavior to your Rails application.

Using Rails UJS enable the user to add a boat to a job without reloading the page
Using the paperclip gem, give a user the ability to upload a photo of a ship when the ship is being created
Grading Criteria:

User should be able to sign up, login and logout
User should be able to add new boats to their profile
User should be able to assign jobs to boats
Boats and jobs should have properties that are noted above
Must have all validations coded
Boat should allow for an image using the paperclip gem
User should be able to add boats to a job using Rails UJS
Code is well commented and contains a README