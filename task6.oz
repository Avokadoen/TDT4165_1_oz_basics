functor
import
    Application(exit:Exit)
    System
define
    fun {Factorial N} 
        if 1 >= N then
            N
        else
            N * {Factorial N-1}
        end
    end
    % Prints: 0
    {System.showInfo "Factorial of 0: "#{Factorial 0}}
    % Prints: 1
    {System.showInfo "Factorial of 1: "#{Factorial 1}}
    % Prints: 120
    {System.showInfo "Factorial of 5: "#{Factorial 5}}
    % Prints: 3628800
    {System.showInfo "Factorial of 10: "#{Factorial 10}}
    {Exit 0}
end

