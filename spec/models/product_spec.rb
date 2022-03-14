require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    describe 'saves' do
      it 'should save' do
        @category = Category.create(name: 'Automotive')
        @product = Product.create(
          name: 'Honda Civic',
          price: 20000,
          category: @category,
          quantity: 10
        )
      expect(@product.errors.full_messages).to be_empty
      end
    end
    
    describe 'No Quantity' do

      before do
        @category = Category.create(name: 'Other')
        @product = Product.create(
          name: 'Test',
          price: 120,
          category: @category
        )
      end

      it('should be give error') do
        expect(@product.errors.full_messages).to include("Quantity can't be blank")
      end

    end

    describe 'No name' do

      before do
        @category = Category.create(name: 'Other')
        @product = Product.create(
          price: 120,
          category: @category,
          quantity: 50
        )
      end

      it('should give erro') do
        expect(@product.errors.full_messages).to include("Name can't be blank")
      end

    end

    describe 'No Price' do

      before do
        @category = Category.create(name: 'Other')
        @product = Product.create(
          name: 'Test',
          category: @category,
          quantity: 50
        )
      end

      it('should give error') do
        expect(@product.errors.full_messages).to include("Price can't be blank")
      end

    end

    describe 'No Category' do

      before do
        @product = Product.create(
          name: 'Test',
          price: 120,
          quantity: 50
        )
      end

      it('should give error') do
        expect(@product.errors.full_messages).to include("Category can't be blank")
      end

    end
    
  end
end