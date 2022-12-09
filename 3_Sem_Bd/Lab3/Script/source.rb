require 'faker'
module Test
    @country = []
    1000.times do
        b = Faker::Address.country
        if (b.match("'") == nil)
            @country << b
        end
    end

    @names = []
    1000.times do
        b = Faker::Name.name
        if (b.match("'") == nil)
            @names << b
        end
    end

    @company = []
    1000.times do
        b = Faker::Company.name
        if (b.match("'") == nil)
            @company << b
        end
    end

    @city = []
    1000.times do
        b = Faker::Address.city
        if (b.match("'") == nil)
            @city << b
        end
    end
    def self.bd_part
        file = File.open('Test.sql', 'a')
        b = ["Слушатель", "Выступающий"]
        10000.times do |i|
            file << "INSERT INTO public.\"Part\" (\"Topic\",\"Participation\",\"Duration_min\",\"Scientist_id\",\"Conference_id\")\n" \
            "VALUES \n" \
            "('#{Faker::Verb.base}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.base}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.base}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.past}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.past}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.past}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.base}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.ing_form}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.ing_form}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)}),\n" \
            "('#{Faker::Verb.ing_form}', '#{b.sample}', #{rand(10000..1000000)}, #{rand(10000..1000000)}, #{rand(10000..1000000)});\n" 
        end
        file.close
    end

    def self.bd_scientists
        file = File.open('scientists.sql', 'a')
        10000.times do
            file << "INSERT INTO public.\"Scientist\" (\"Country\",\"Name\",\"Academic_degree\",\"Specialization\",\"Organization\")\n" \
            "VALUES \n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}'),\n" \
            "('#{@country.sample}', '#{@names.sample}', '#{Faker::Educator.degree}', '#{Faker::Educator.degree}', '#{@company.sample}');\n" 
        end
        file.close
    end

    def self.bd_collections
        file = File.open('Dop_Collection.sql', 'a')
        10000.times do
            file << "INSERT INTO public.\"Collection\" (\"Canals_count\",\"Circalation_count\",\"Canals\")\n" \
            "VALUES \n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}'),\n" \
            "('#{a = rand(1..10)}', '#{rand(1000..1000000)}', '#{Faker::Json.shallow_json(width: rand(1..4), options: {key: 'Number.number(digits:1)', value: 'Verb.base'})}');\n" 
        end
        file.close
    end
    
    def self.bd_sponsor
        file = File.open('Sponsor.sql', 'a')
        10000.times do
            file << "INSERT INTO public.\"Sponsor\" (\"Name\",\"Budget_rub\")\n" \
            "VALUES \n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}'),\n" \
            "('#{@company.sample}', '#{rand(10000..1000000)}');\n" 
        end
        file.close
    end
    
    def self.bd_conference
        file = File.open('Conferences.sql', 'a')
        10000.times do
            file << "INSERT INTO public.\"Conference\" (\"Theme\",\"Name\",\"Date\",\"Place\",\"Country\", \"Collection_id\", \"Sponsor_id\", \"Countries_participants\")\n" \
            "VALUES \n" \
            "('#{Faker::Verb.base}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.base}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.base}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.past}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.past}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.past}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.past}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.ing_form}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.ing_form}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'), \n" \
            "('#{Faker::Verb.ing_form}', '#{@company.sample}', '#{Faker::Date.between(from: '2014-09-23', to: '2022-12-8')}', '#{@city.sample}', '#{@country.sample}', #{rand(1000..1000000)}, #{rand(1000..1000000)}, '{\"#{@country.sample}\", \"#{@country.sample}\", \"#{@country.sample}\"}'); \n" 
        end
        file.close
             
    end

    def self.bd_new_part

        file_new = File.open('New_part.sql', 'w')
        file_old = File.open('Test.sql', 'r')
        100000.times do 
            file_new << file_old.readline
        end
        file_new.close
        file_old.close
    end
end