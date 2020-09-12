functor

import
    Application(exit:Exit)
    System
    List at './List.ozf'  

define
    % Length test
    {System.showInfo "Length test:"}
    {System.showInfo {List.length '|'(nil)}}    % prints: 0
    {System.showInfo {List.length [0]}}         % prints: 1
    {System.showInfo {List.length [0 1]}}       % prints: 2

    TList = [0 1 2 3 4 5]
    
    % Take test
    {System.showInfo "\nTake test:"}
    {System.print {List.take TList 1}}    % prints: [0]
    {System.print {List.take TList 3}}    % prints: [0 1 2]
    {System.print {List.take TList 5}}    % prints: [0 1 2 3 4]

    % Drop test
    {System.showInfo "\nDrop test:"}
    {System.print {List.drop TList 1}}    % prints: [1 2 3 4 5]
    {System.print {List.drop TList 3}}    % prints: [3 4 5]
    {System.print {List.drop TList 5}}    % prints: [5]
    {System.print {List.drop TList 6}}    % prints: nil

    % Append test
    {System.showInfo "\nAppend test:"}
    TList2 = [6 7]
    {System.print {List.append TList TList2}}    % prints: [0 1 2 3 4 5 6 7]
    {System.print {List.append TList2 TList}}    % prints: [6 7 0 1 2 3 4 5]
    {System.print {List.append TList nil}}      % prints: [0 1 2 3 4 5]
    {System.print {List.append nil TList}}      % prints: [0 1 2 3 4 5]
    

    % Member test
    {System.showInfo "\nMember test:"}
    {System.show {List.member TList 5}}    % prints: true
    {System.show {List.member TList 3}}    % prints: true
    {System.show {List.member TList 1}}    % prints: true
    {System.show {List.member TList 6}}    % prints: false

    TList3 = [5 3 2 1]
    % Position test
    {System.showInfo "\nPosition test:"}
    {System.showInfo {List.position TList3 5}}    % prints: 1
    {System.showInfo {List.position TList3 3}}    % prints: 2
    {System.showInfo {List.position TList3 1}}    % prints: 4
    % {System.showInfo {List.position TList3 6}}    % prints: -1

    {Exit 0}
end
