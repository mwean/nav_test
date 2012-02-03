SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :people, 'People', [:people] do |people|
      if @person
        p 'PERSON'
        people.item :person, 'Person', [@person] do |person|
          unless @person.new_record?
            person.item :children, 'Children', [@person, :children] do |children|
              if @child
                p 'CHILD'
                children.item(:child, 'Child', (params[:action] == 'show' ? [@child] : [@person, @child])) do |child|
                  unless @child.new_record?
                    child.item :pets, 'Pets', [@child, :pets] do |pets|
                      p 'PETS'
                      if @pet
                        p 'PET'
                        pets.item :pet, 'Pet', params[:action] == 'show' ? [@pet] : [@child, @pet]
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end