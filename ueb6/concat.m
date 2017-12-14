function y = concat(g1, g2)
    % Verkettung zweier Funktionen g1 und g2
    % Bsp: g1 = @(x) x.^2
    %      g2 = @(x) sin(x)
    %      g3 = concat(g1, g2)
    %      g3(pi/2) % ans = 1
    y = @(x) g1(g2(x));
end
