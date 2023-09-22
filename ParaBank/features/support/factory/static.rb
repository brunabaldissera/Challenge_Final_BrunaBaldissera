module Factory
    class Static

        def self.load_file
            YAML.load_file(File.dirname(__FILE__) + "/static/#{ENVIRONMENT}.yml" )
        end

        def self.static_data data
            Static.load_file[data]
        end

        def self.static_data_two_args data, data2
            Static.load_file[data][data2]
        end

        def self.empty_register_data
            {
              first_name: '',
              last_name: '',
              address: '',
              city: '',
              state: '',
              zip_code: '',
              phone: '',
              ssn: '',
              user: '',
              password1: '',
              password2: ''
            }
        end

        def self.existent_user_data
            {
              first_name: 'John',
              last_name: 'Smith',
              address: '1431 Main St',
              city: 'Beverly Hills',
              state: 'CA',
              zip_code: '90210',
              phone: '310-447-4121',
              ssn: '12345',
              user: 'john',
              password1: 'demo',
              password2: 'demo'
            }
        end

        def self.invalid_test_data
            {
              letters: 'abc',
              symbols: '#&%',
              empty: '',
              big_value: '10000000000000000'
            }
        end

        def self.empty_billpay_data
            {
                payee: '',
                address: '',
                city: '',
                state: '',
                zip_code: '',
                phone: '',
                account: '',
                verify_account: '',                   
                amount: ''
            }
        end

        def self.empty_transfer_data
            {                
                amount: ''
            }
        end
    end
end