functor
import
    Application(exit:Exit)
    System
define
    proc {Circle R}
        local 
            Pi A D C 
        in
            Pi = 3.14159265359
            A = Pi * {Pow R 2.0}
            D = 2.0 * R
            C = Pi * D
            {System.showInfo "R: "#R#"\nA: "#A#"\nD: "#D#"\nC: "#C}
        end
    end

    {Circle 3.0}
    {Exit 0}
end

