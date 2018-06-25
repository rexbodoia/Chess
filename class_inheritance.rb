class Employee
  attr_reader :salary
  
  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  def initialize(name, title, salary, boss)
    super
    @employees = []
  end
  
  def add_employee(employee)
    @employees << employee
  end
  
  def bonus(multiplier)
    bonus_rec * multiplier
  end
  
  def bonus_rec
    sum = @employees.inject(0) do |acc, employee| 
      if employee.is_a?(Manager)
        acc += employee.bonus_rec + employee.salary
      else  
        acc += employee.salary 
      end
    end
  end
end

# ned = Manager.new("Ned", "founder", 1000000, nil)
# darren = Manager.new("Darren", "ta-lead", 78000, ned)
# shawna = Employee.new("Shawna", "ta", 12000)
# david = Employee.new("David", "ta", 12000)

