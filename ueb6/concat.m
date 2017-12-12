function y = concat(g1, g2, x)
    % Verkettung zweier Funktionen g1 und g2
    y = g1(g2(x));
end
