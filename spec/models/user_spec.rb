require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validation' do 
  

    describe 'password should be present' do 

      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com'
        )

      end

      it('should give error') do
        
        expect(@user.errors.full_messages).to include("Password can't be blank")

      end
    
    end

    describe 'password_confirmation should be present' do

      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com',
          password: 'password1234567890'
        )

      end

      it('should give error') do
        
        expect(@user.errors.full_messages).to include("Password confirmation can't be blank")

      end
      
    end

    describe 'password and password_confimation should match' do 

      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com',
          password: 'test1234567890',
          password_confirmation: 'test11234567890'
        )

      end

      it('should give error') do
        
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")

      end
    
    end

    describe 'email must be unique' do 

      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com',
          password: 'test1234567890',
          password_confirmation: 'test1234567890'
        )

        @user1 = User.create(
          name: 'John',
          email: 'TEST@example.com',
          password: 'test1234567890',
          password_confirmation: 'test1234567890'
        )


      end

      it('should give error') do
        
        expect(@user1.errors.full_messages).to include("Email has already been taken")

      end
    
    end

    describe 'email should exist' do 

      before do
        
        @user = User.create(
          name: 'John',
          password: 'test1234567890',
          password_confirmation: 'test1234567890'
        )

      end

      it('should give error') do
        
        expect(@user.errors.full_messages).to include("Email can't be blank")

      end
    
    end

    describe 'name should exist' do 

      before do
        
        @user = User.create(
          email: 'test@example.com',
          password: 'test1234567890',
          password_confirmation: 'test1234567890'
        )

      end

      it('should give error') do
        
        expect(@user.errors.full_messages).to include("Name can't be blank")

      end
    
    end

    describe 'password should have minimum length of 10 characters' do 

      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com',
          password: 'test',
          password_confirmation: 'test'
        )

      end

      it('should give error') do
        
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 10 characters)")

      end
    
    end

  end

  describe '.authenticate_with_credentials' do

    describe 'should return user if authenticated' do
      
      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com',
          password: 'test0123456789',
          password_confirmation: 'test0123456789'
        )

      end

      it('should return the same user') do
        @user1 = User.authenticate_with_credentials('test@example.com', 'test0123456789')

        expect(@user1).to include(@user)
      end
    end

    describe 'should return user not authenticated' do
      
      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com',
          password: 'test0123456789',
          password_confirmation: 'test0123456789'
        )

      end

      it('should return nil') do
        @user1 = User.authenticate_with_credentials('test@example.com', 'test01234567890')

        expect(@user1).to be nil
      end
    end

    describe 'should return user even with email wrapped in space' do
      
      before do
        
        @user = User.create(
          name: 'John',
          email: 'test@example.com',
          password: 'test0123456789',
          password_confirmation: 'test0123456789'
        )

      end

      it('should return nil') do
        @user1 = User.authenticate_with_credentials('   test@example.com   ', 'test0123456789')

        expect(@user1).to include(@user)
      end
    end

    describe 'should return user even with email in uppercase' do
      
      before do
        
        @user = User.create(
          name: 'John',
          email: 'tesT@examplE.com',
          password: 'test0123456789',
          password_confirmation: 'test0123456789'
        )

      end

      it('should return user') do
        @user1 = User.authenticate_with_credentials('TEST@example.COM', 'test0123456789')

        expect(@user1).to include(@user)
      end
    end



  end

end