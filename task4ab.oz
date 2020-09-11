functor
import
    Application(exit:Exit)
    System
define
    fun {Max X Y}
        if X > Y then
            X
        else 
            Y
        end
    end

    proc {PrintGreater X Y}
        {System.showInfo {Max X Y}}
    end

    {PrintGreater 999 111}
    {Exit 0}
end

