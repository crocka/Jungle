# Jungle

A mini e-commerce application built with Rails 4.2.

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots
### Main page with default set to Monday
!["Main page with default set to Monday"](https://github.com/crocka/scheduler/blob/master/docs/mainpage_default_monday.png)
### Switch to a different day
!["Switch to a different day"](https://github.com/crocka/scheduler/blob/master/docs/swtich_to_different_day.png)
### Adding an appointment by click the plus sign
!["Adding an appointment by click the plus sign"](https://github.com/crocka/scheduler/blob/master/docs/adding_appointment_form.png)
### Saving interface
!["Saving interface"](https://github.com/crocka/scheduler/blob/master/docs/saving_interface.png)
### The appointment shows up after adding it
!["The appointment shows up after adding it"](https://github.com/crocka/scheduler/blob/master/docs/after_adding_appointment.png)
### Deleting confimation after clicking trash icon
!["Deleting confimation after clicking trash icon"](https://github.com/crocka/scheduler/blob/master/docs/delete_confirmation.png)
### Deleting interface after delete confirmation
!["Deleting interface after delete confirmation"](https://github.com/crocka/scheduler/blob/master/docs/deleting_interface.png)
