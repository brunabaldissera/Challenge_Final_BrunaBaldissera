require 'faker'

module Factory
    class Dynamic
        def self.valid_register_data 
            {
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                email: Faker::Internet.email,
                password: Faker::Internet.password,
                confirm_password: Faker::Internet.password,
                address: Faker::Address.street_address,
                city: Faker::Address.city,
                state: Faker::Address.state_abbr,
                zip_code: Faker::Address.zip_code,
                phone: Faker::PhoneNumber.phone_number,
                ssn: Faker::IDNumber.valid,
                user: Faker::Internet.user_name
            }
        end

        def self.invalid_register_data
            {
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                address: Faker::Address.street_address,
                city: Faker::Address.city,
                state: Faker::Address.state_abbr,
                zip_code: Faker::Address.zip_code,
                phone: Faker::PhoneNumber.phone_number,
                ssn: Faker::IDNumber.valid,
                username: Faker::Internet.user_name,
                password: Faker::Internet.password,
                confirm_password: Faker::Internet.password(min_length: 8)
            }
        end

        def self.invalid_login_data
            {
                username: Faker::Internet.user_name,
                password: Faker::Internet.password,
            }
        end

        def self.valid_loan_data
            {
                amount: Faker::Number.decimal(l_digits: 2, r_digits: 2),
                down_payment: Faker::Number.decimal(l_digits: 1, r_digits: 2),
            }
        end

        def self.valid_billpay_data
            account = Faker::Number.number(digits: 5)
            {
                payee: Faker::Company.name,
                address: Faker::Address.street_address,
                city: Faker::Address.city,
                state: Faker::Address.state_abbr,
                zip_code: Faker::Address.zip_code,
                phone: Faker::PhoneNumber.phone_number,
                account: account,
                verify_account: account,
                amount: Faker::Number.decimal(l_digits: 4, r_digits: 2)
            }
        end

        def self.invalid_billpay_data
            {
                payee: Faker::Company.name,
                address: Faker::Address.street_address,
                city: Faker::Address.city,
                state: Faker::Address.state_abbr,
                zip_code: Faker::Address.zip_code,
                phone: Faker::PhoneNumber.phone_number,
                account: Faker::Number.number(digits: 5),
                verify_account: Faker::Number.number(digits: 5),
                amount: Faker::Number.decimal(l_digits: 4, r_digits: 2)
            }
        end

        def self.valid_transfer_data
            {
                amount: Faker::Number.decimal(l_digits: 4, r_digits: 2)
            }
        end
    end
end