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
* bCrypt

## Screenshots
### homepage
!["homepage.png"](https://github.com/crocka/Jungle/blob/master/images/homepage.png)
### homepage_selected_categories
!["homepage_selected_categories.png"](https://github.com/crocka/Jungle/blob/master/images/homepage_selected_categories.png)

### admin_signin
!["admin_signin.png"](https://github.com/crocka/Jungle/blob/master/images/admin_signin.png)
### Admin_dashboard
!["Admin_dashboard.png"](https://github.com/crocka/Jungle/blob/master/images/Admin_dashboard.png)
### admin_categories
!["admin_categories.png"](https://github.com/crocka/Jungle/blob/master/images/admin_categories.png)
### admin_product
!["admin_product.png"](https://github.com/crocka/Jungle/blob/master/images/admin_product.png)

### cart_empty
!["cart_empty.png"](https://github.com/crocka/Jungle/blob/master/images/cart_empty.png)
### cart_summary
!["cart_summary.png"](https://github.com/crocka/Jungle/blob/master/images/cart_summary.png)

### order_checkout
!["order_checkout.png"](https://github.com/crocka/Jungle/blob/master/images/order_checkout.png)
### order_summary
!["order_summary.png"](https://github.com/crocka/Jungle/blob/master/images/order_summary.png)

