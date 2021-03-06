function config = create( varargin )
%CREATE Create a new calculator configuration.

  config = struct(...
    'name',             'pose_calculator', ...
    'input',            'image', ...
    'input_annotation', 'point', ...
    'output',           'pose', ...
    'scale',            0.35, ...
    'cache_dir',        tempname,...
    'model',            []...
    );
  for i = 1:2:numel(varargin)
    switch varargin{i}
      case 'Input', config.input = varargin{i+1};
      case 'Output', config.output = varargin{i+1};
    end
  end

end

