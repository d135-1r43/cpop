\version "2.20.0"

drumIn = \drummode {
    \time 4/4
    <<
        {
            bd4 s2.
            s1
            bd4 s2.
            s1
            bd4 s2.
            bd4 s2.
            bd4 s s s8 bd8
            bd4
        } \\
        { 
            tomfl4 s2. 
            s1
            tomfl4 s2. 
            s1
            tomfl4 s2. 
        } \\
        \repeat unfold 16 hho2
    >>

    <<
        {
            \repeat unfold 4 {
                bd4 s s s8 bd8
                bd4 s2.
            }
        } \\
        {
            \repeat unfold 4 {
                sn4 s4 sn8 sn8 s8 sn8
                s8 sn8 s4 sn4 s8 sn16 sn16
            }
        } \\
        {
            \repeat unfold 4 {
                tomfh4 tomfh4 tomfh4 tomfh4
                tomfh4 tomfh4 tomfh4 tomfh8 tomfh8
            }
        }
    >>
    <<
        {
            \repeat unfold 32 {
                bd4
            }
        } \\
        {
            \repeat unfold 4 {
                tomfh8 tomml8 tomfh4 tomfh8 tomml8 tomfh8 tomml8
                sn8 tomml8 tomfh4 tomfh8 tomml8 tomfh8 tomml8
            }
        }
    >>
    
    hho4 r hho r 
    hho4 r hho r 
}

drumChorOne = \drummode {
    % till 46
    \repeat unfold 80 {
        <bd tomfl>8 tomfl
    }

    bd16 sn <bd sn> sn <bd sn>
    bd sn <bd sn> sn4:16 
    tomml16 tomml tomfh tomfh
}

drumPatternEights = \drummode {
    <bd tomfl tomfh>8 tomfl tomfl <bd tomfl tomfh>
    <bd tomfl> tomfl <tomfl tomfh> tomfl 
}

drumChorTwo = \drummode {
    <bd tomfh>16 sn sn sn 
    sn sn <sn bd> sn
    <sn bd> sn  sn sn 
    sn sn <sn bd> sn

    \repeat unfold 7 {
        <bd tomfh> sn <bd tomfh> sn
        sn sn <sn bd> sn
        <sn bd> sn <sn bd> sn
        <sn bd> sn <sn bd> sn
    }

    \repeat unfold 5 {
        <bd tomml> tomml <bd tomml> sn
        <bd sn> sn <bd sn> sn 
        <bd sn> sn <bd sn> sn 

        <bd tomml> tomml <bd tomml> sn
        <bd sn> sn <bd sn> sn 
        <bd tomml> tomml <bd tomml> tomml 
    }
    
    hho4 hho
    <bd tomfl tomfh>8 tomfl tomfl <bd tomfl tomfh>
    <bd tomfl> tomfl <tomfl tomfh> tomfl 

    \repeat unfold 8 \drumPatternEights
}