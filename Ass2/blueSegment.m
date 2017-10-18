function toRet = blueSegment(toSegment)
    Red = toSegment(:,:,1);
    Green = toSegment(:,:,1);
    Blue = toSegment(:,:,2);
    for i = 1:size(Red, 1)
        for j = 1:size(Red, 2)
            Rc = Red(i,j);
            Gc = Green(i,j);
            Bc = Blue(i,j);
            toRet(i,j) = Bc/(Rc + Gc + Bc);
        end
    end
    
end
