\version "2.20.0"

drumIn = \drummode {
    \time 4/4
    <bd tomfl hho>4 r hho r
    hho r  hho r 

    <bd tomfl hho>4 r hho r
    hho r hho r 

    <bd tomfl hho>4 r hho r
    <bd hho>4 r hho r
    <bd hho>4 r hho r8 bd
    <bd hho>4 r hho r

    % 9
    \repeat unfold 8 {
        <bd sn tomfh>4 tomfh <sn tomfh>8 sn tomfh <bd sn>
        <bd tomfh>8 sn tomfh4 <sn tomfh> tomfh8 <tomfh sn>
    }

    <bd sn tomfh>4 tomfh <sn tomfh>8 sn tomfh <bd sn>
    hho4 hho hho hho
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

drumPatternBuildup = \drummode {
    \repeat unfold 4 { <bd tomfl>8 tomfl }
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

    \repeat unfold 7 \drumPatternEights
}

drumSolo = \drummode {
    \repeat unfold 8 \drumPatternEights
    \repeat unfold 8 \drumPatternBuildup
    \repeat unfold 2 \drumPatternEights

    <bd cymch>8\mf\< tomfl tomfl <bd cymch>
    <bd cymch> tomfl <tomfh cymch> tomfl 

    <bd cymch>8 tomfl tomfl <bd tomfl tomfh cymch>
    <bd cymch> tomfl <cymch> tomfl\fff\!
}

drumEnd = \drummode {
    cymch1:16\mf\<(
    cymch:16\f\!       
    )
}