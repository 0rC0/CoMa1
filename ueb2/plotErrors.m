function plotErrors(X, errAbs, errRel)
% Plots the errors as requested by the exercise.
% The results are saved in various files. (See code below.)
%
% Inputs:
% * X         Vector of input data.
% * errAbs    Vector of absolute errors.
% * errRel    Vector of relative errors.
%

  % Some preparation.
  plotFuncs = {@plot, @semilogx, @semilogy, @loglog};
  data      = {errAbs, errRel};

  yNames    = {'Absolute', 'Relative'};
  fNames    = {'standard', 'x-logarithmic', 'y-logarithmic', 'xy-logarithmic'};

  % Loop over data and plot functions.
  for i = 1:length(data)
    % Set active data.
    Y     = data{i};
    yName = yNames{i};

    for j = 1:length(plotFuncs)
      % Pick function for plotting.
      f     = plotFuncs{j};
      fName = fNames{j};

      % Create an invisible figure.
      h = figure('Visible', 'off');

      % Plot data points and add title.
      f(X, Y, '.');
      title([yName ' error with ' fName ' scaling']);

      % Save plot to file.
      print(h, [yName '_' fName '.png'], '-dpng');

      % Close the figure.
      close(h);
    end
  end

end
