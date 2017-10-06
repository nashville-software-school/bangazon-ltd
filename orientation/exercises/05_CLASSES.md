# Classes

## Setup

```
mkdir -p ~/workspace/ruby/exercises/classes && cd $_
touch employees.rb
```

## Instructions

1. Create a class that contains information about employees of a company and define methods to get/set employee name, job title, and start date.

2. Copy this `Company` class into your module.

    ```
    class Company
        
        def initialize(company_name)
            @company_name = company_name
        end

        #Returns the name of the company
        def company_name
            @company_name
        end

        # Add the remaining methods to fill the requirements above
    end
    ```

3. Consider the concept of [aggregation](https://github.com/nashville-software-school/bangazon-ltd/blob/master/orientation/FND_14_INHERIT_COMPOSE_AGGREGATE.md), and modify the `Company` class so that you assign employees to a company.
4. Create a company, and three employees, and then assign the employees to the company.
