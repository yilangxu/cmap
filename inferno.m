
function cm = inferno(n, opt_interp)
% Colormap: inferno

%-- Parse inputs ---------------------------------------------------------%
if ~exist('n', 'var'); n = []; end
if isempty(n)
   f = get(groot,'CurrentFigure');
   if isempty(f)
      n = size(get(groot,'DefaultFigureColormap'),1);
   else
      n = size(f.Colormap,1);
   end
end

% by default, interpolate in rgb space
if ~exist('opt_interp','var'); opt_interp = []; end
if isempty(opt_interp); opt_interp = 'rgb'; end
%-------------------------------------------------------------------------%

% Data for colormap:
cm = [
	0.001462000	0.000466000	0.013866000
	0.002267000	0.001270000	0.018570000
	0.003299000	0.002249000	0.024239000
	0.004547000	0.003392000	0.030909000
	0.006006000	0.004692000	0.038558000
	0.007676000	0.006136000	0.046836000
	0.009561000	0.007713000	0.055143000
	0.011663000	0.009417000	0.063460000
	0.013995000	0.011225000	0.071862000
	0.016561000	0.013136000	0.080282000
	0.019373000	0.015133000	0.088767000
	0.022447000	0.017199000	0.097327000
	0.025793000	0.019331000	0.105930000
	0.029432000	0.021503000	0.114621000
	0.033385000	0.023702000	0.123397000
	0.037668000	0.025921000	0.132232000
	0.042253000	0.028139000	0.141141000
	0.046915000	0.030324000	0.150164000
	0.051644000	0.032474000	0.159254000
	0.056449000	0.034569000	0.168414000
	0.061340000	0.036590000	0.177642000
	0.066331000	0.038504000	0.186962000
	0.071429000	0.040294000	0.196354000
	0.076637000	0.041905000	0.205799000
	0.081962000	0.043328000	0.215289000
	0.087411000	0.044556000	0.224813000
	0.092990000	0.045583000	0.234358000
	0.098702000	0.046402000	0.243904000
	0.104551000	0.047008000	0.253430000
	0.110536000	0.047399000	0.262912000
	0.116656000	0.047574000	0.272321000
	0.122908000	0.047536000	0.281624000
	0.129285000	0.047293000	0.290788000
	0.135778000	0.046856000	0.299776000
	0.142378000	0.046242000	0.308553000
	0.149073000	0.045468000	0.317085000
	0.155850000	0.044559000	0.325338000
	0.162689000	0.043554000	0.333277000
	0.169575000	0.042489000	0.340874000
	0.176493000	0.041402000	0.348111000
	0.183429000	0.040329000	0.354971000
	0.190367000	0.039309000	0.361447000
	0.197297000	0.038400000	0.367535000
	0.204209000	0.037632000	0.373238000
	0.211095000	0.037030000	0.378563000
	0.217949000	0.036615000	0.383522000
	0.224763000	0.036405000	0.388129000
	0.231538000	0.036405000	0.392400000
	0.238273000	0.036621000	0.396353000
	0.244967000	0.037055000	0.400007000
	0.251620000	0.037705000	0.403378000
	0.258234000	0.038571000	0.406485000
	0.264810000	0.039647000	0.409345000
	0.271347000	0.040922000	0.411976000
	0.277850000	0.042353000	0.414392000
	0.284321000	0.043933000	0.416608000
	0.290763000	0.045644000	0.418637000
	0.297178000	0.047470000	0.420491000
	0.303568000	0.049396000	0.422182000
	0.309935000	0.051407000	0.423721000
	0.316282000	0.053490000	0.425116000
	0.322610000	0.055634000	0.426377000
	0.328921000	0.057827000	0.427511000
	0.335217000	0.060060000	0.428524000
	0.341500000	0.062325000	0.429425000
	0.347771000	0.064616000	0.430217000
	0.354032000	0.066925000	0.430906000
	0.360284000	0.069247000	0.431497000
	0.366529000	0.071579000	0.431994000
	0.372768000	0.073915000	0.432400000
	0.379001000	0.076253000	0.432719000
	0.385228000	0.078591000	0.432955000
	0.391453000	0.080927000	0.433109000
	0.397674000	0.083257000	0.433183000
	0.403894000	0.085580000	0.433179000
	0.410113000	0.087896000	0.433098000
	0.416331000	0.090203000	0.432943000
	0.422549000	0.092501000	0.432714000
	0.428768000	0.094790000	0.432412000
	0.434987000	0.097069000	0.432039000
	0.441207000	0.099338000	0.431594000
	0.447428000	0.101597000	0.431080000
	0.453651000	0.103848000	0.430498000
	0.459875000	0.106089000	0.429846000
	0.466100000	0.108322000	0.429125000
	0.472328000	0.110547000	0.428334000
	0.478558000	0.112764000	0.427475000
	0.484789000	0.114974000	0.426548000
	0.491022000	0.117179000	0.425552000
	0.497257000	0.119379000	0.424488000
	0.503493000	0.121575000	0.423356000
	0.509730000	0.123769000	0.422156000
	0.515967000	0.125960000	0.420887000
	0.522206000	0.128150000	0.419549000
	0.528444000	0.130341000	0.418142000
	0.534683000	0.132534000	0.416667000
	0.540920000	0.134729000	0.415123000
	0.547157000	0.136929000	0.413511000
	0.553392000	0.139134000	0.411829000
	0.559624000	0.141346000	0.410078000
	0.565854000	0.143567000	0.408258000
	0.572081000	0.145797000	0.406369000
	0.578304000	0.148039000	0.404411000
	0.584521000	0.150294000	0.402385000
	0.590734000	0.152563000	0.400290000
	0.596940000	0.154848000	0.398125000
	0.603139000	0.157151000	0.395891000
	0.609330000	0.159474000	0.393589000
	0.615513000	0.161817000	0.391219000
	0.621685000	0.164184000	0.388781000
	0.627847000	0.166575000	0.386276000
	0.633998000	0.168992000	0.383704000
	0.640135000	0.171438000	0.381065000
	0.646260000	0.173914000	0.378359000
	0.652369000	0.176421000	0.375586000
	0.658463000	0.178962000	0.372748000
	0.664540000	0.181539000	0.369846000
	0.670599000	0.184153000	0.366879000
	0.676638000	0.186807000	0.363849000
	0.682656000	0.189501000	0.360757000
	0.688653000	0.192239000	0.357603000
	0.694627000	0.195022000	0.354388000
	0.700576000	0.197851000	0.351113000
	0.706500000	0.200728000	0.347777000
	0.712396000	0.203656000	0.344383000
	0.718264000	0.206636000	0.340931000
	0.724103000	0.209670000	0.337424000
	0.729909000	0.212759000	0.333861000
	0.735683000	0.215906000	0.330245000
	0.741423000	0.219112000	0.326576000
	0.747127000	0.222378000	0.322856000
	0.752794000	0.225706000	0.319085000
	0.758422000	0.229097000	0.315266000
	0.764010000	0.232554000	0.311399000
	0.769556000	0.236077000	0.307485000
	0.775059000	0.239667000	0.303526000
	0.780517000	0.243327000	0.299523000
	0.785929000	0.247056000	0.295477000
	0.791293000	0.250856000	0.291390000
	0.796607000	0.254728000	0.287264000
	0.801871000	0.258674000	0.283099000
	0.807082000	0.262692000	0.278898000
	0.812239000	0.266786000	0.274661000
	0.817341000	0.270954000	0.270390000
	0.822386000	0.275197000	0.266085000
	0.827372000	0.279517000	0.261750000
	0.832299000	0.283913000	0.257383000
	0.837165000	0.288385000	0.252988000
	0.841969000	0.292933000	0.248564000
	0.846709000	0.297559000	0.244113000
	0.851384000	0.302260000	0.239636000
	0.855992000	0.307038000	0.235133000
	0.860533000	0.311892000	0.230606000
	0.865006000	0.316822000	0.226055000
	0.869409000	0.321827000	0.221482000
	0.873741000	0.326906000	0.216886000
	0.878001000	0.332060000	0.212268000
	0.882188000	0.337287000	0.207628000
	0.886302000	0.342586000	0.202968000
	0.890341000	0.347957000	0.198286000
	0.894305000	0.353399000	0.193584000
	0.898192000	0.358911000	0.188860000
	0.902003000	0.364492000	0.184116000
	0.905735000	0.370140000	0.179350000
	0.909390000	0.375856000	0.174563000
	0.912966000	0.381636000	0.169755000
	0.916462000	0.387481000	0.164924000
	0.919879000	0.393389000	0.160070000
	0.923215000	0.399359000	0.155193000
	0.926470000	0.405389000	0.150292000
	0.929644000	0.411479000	0.145367000
	0.932737000	0.417627000	0.140417000
	0.935747000	0.423831000	0.135440000
	0.938675000	0.430091000	0.130438000
	0.941521000	0.436405000	0.125409000
	0.944285000	0.442772000	0.120354000
	0.946965000	0.449191000	0.115272000
	0.949562000	0.455660000	0.110164000
	0.952075000	0.462178000	0.105031000
	0.954506000	0.468744000	0.099874000
	0.956852000	0.475356000	0.094695000
	0.959114000	0.482014000	0.089499000
	0.961293000	0.488716000	0.084289000
	0.963387000	0.495462000	0.079073000
	0.965397000	0.502249000	0.073859000
	0.967322000	0.509078000	0.068659000
	0.969163000	0.515946000	0.063488000
	0.970919000	0.522853000	0.058367000
	0.972590000	0.529798000	0.053324000
	0.974176000	0.536780000	0.048392000
	0.975677000	0.543798000	0.043618000
	0.977092000	0.550850000	0.039050000
	0.978422000	0.557937000	0.034931000
	0.979666000	0.565057000	0.031409000
	0.980824000	0.572209000	0.028508000
	0.981895000	0.579392000	0.026250000
	0.982881000	0.586606000	0.024661000
	0.983779000	0.593849000	0.023770000
	0.984591000	0.601122000	0.023606000
	0.985315000	0.608422000	0.024202000
	0.985952000	0.615750000	0.025592000
	0.986502000	0.623105000	0.027814000
	0.986964000	0.630485000	0.030908000
	0.987337000	0.637890000	0.034916000
	0.987622000	0.645320000	0.039886000
	0.987819000	0.652773000	0.045581000
	0.987926000	0.660250000	0.051750000
	0.987945000	0.667748000	0.058329000
	0.987874000	0.675267000	0.065257000
	0.987714000	0.682807000	0.072489000
	0.987464000	0.690366000	0.079990000
	0.987124000	0.697944000	0.087731000
	0.986694000	0.705540000	0.095694000
	0.986175000	0.713153000	0.103863000
	0.985566000	0.720782000	0.112229000
	0.984865000	0.728427000	0.120785000
	0.984075000	0.736087000	0.129527000
	0.983196000	0.743758000	0.138453000
	0.982228000	0.751442000	0.147565000
	0.981173000	0.759135000	0.156863000
	0.980032000	0.766837000	0.166353000
	0.978806000	0.774545000	0.176037000
	0.977497000	0.782258000	0.185923000
	0.976108000	0.789974000	0.196018000
	0.974638000	0.797692000	0.206332000
	0.973088000	0.805409000	0.216877000
	0.971468000	0.813122000	0.227658000
	0.969783000	0.820825000	0.238686000
	0.968041000	0.828515000	0.249972000
	0.966243000	0.836191000	0.261534000
	0.964394000	0.843848000	0.273391000
	0.962517000	0.851476000	0.285546000
	0.960626000	0.859069000	0.298010000
	0.958720000	0.866624000	0.310820000
	0.956834000	0.874129000	0.323974000
	0.954997000	0.881569000	0.337475000
	0.953215000	0.888942000	0.351369000
	0.951546000	0.896226000	0.365627000
	0.950018000	0.903409000	0.380271000
	0.948683000	0.910473000	0.395289000
	0.947594000	0.917399000	0.410665000
	0.946809000	0.924168000	0.426373000
	0.946392000	0.930761000	0.442367000
	0.946403000	0.937159000	0.458592000
	0.946903000	0.943348000	0.474970000
	0.947937000	0.949318000	0.491426000
	0.949545000	0.955063000	0.507860000
	0.951740000	0.960587000	0.524203000
	0.954529000	0.965896000	0.540361000
	0.957896000	0.971003000	0.556275000
	0.961812000	0.975924000	0.571925000
	0.966249000	0.980678000	0.587206000
	0.971162000	0.985282000	0.602154000
	0.976511000	0.989753000	0.616760000
	0.982257000	0.994109000	0.631017000
	0.988362000	0.998364000	0.644924000
];

%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp, 'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
elseif strcmp(opt_interp, 'hsv')
    hsl = rgb2hsl(cm);
    hsl = interp1(1:p, hsl, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsl);
elseif strcmp(opt_interp, 'none') % do nothing
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end

end
