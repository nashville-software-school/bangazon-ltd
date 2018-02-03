# Modules

## Setup

```
mkdir -p ~/workspace/ruby/exercises/modules && cd $_
touch furniture.rb
touch table.rb
touch properties.rb
```

## Instructions

1. Copy this `Properties` module into your properties.rb file.

    ```
    module Properties
      module ClassMethods
        def four_legs
          "Has four legs"
        end

        def type_of_wood
            "Cherry"
        end
      end

      def description
        puts "This piece has four legs and is made of cherry."
      end
    end
    ```

2. Copy this `Furniture` class into your furniture.rb file.

    ```
    class Furniture

      def total_size(length, width, height)
        puts "This piece has the following dimensions: #{width}W x #{height}H x #{length}L"
      end

    end
    ```    


3. Create a class Table that inherits from class Furniture and also has added variable for seating(Integer). Use the module Properties as a mixin in the class Table in order to determine its number of legs, type of wood, dimensions and description.
