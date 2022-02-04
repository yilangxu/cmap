
function cm = matter(n, opt_interp)
% Colormap: matter

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
  	0.185172	0.059133	0.243043
  	0.190082	0.060579	0.246516
  	0.195002	0.06199	0.249968
  	0.19993	0.063368	0.253398
  	0.204869	0.064711	0.256805
  	0.209824	0.066015	0.260191
  	0.214788	0.067286	0.263551
  	0.219762	0.068526	0.266888
  	0.224746	0.069734	0.270198
  	0.229745	0.070906	0.273483
  	0.234755	0.072046	0.276741
  	0.239776	0.073156	0.279971
  	0.244807	0.074236	0.283172
  	0.249849	0.075288	0.286344
  	0.254905	0.076306	0.289486
  	0.259972	0.077294	0.292597
  	0.26505	0.078255	0.295676
  	0.270139	0.079188	0.298722
  	0.275238	0.080094	0.301734
  	0.280348	0.080974	0.304712
  	0.285468	0.081828	0.307654
  	0.290601	0.082653	0.31056
  	0.295745	0.083454	0.313428
  	0.300898	0.084231	0.316257
  	0.306061	0.084985	0.319048
  	0.311234	0.085716	0.321798
  	0.316417	0.086425	0.324506
  	0.321608	0.087114	0.327172
  	0.326809	0.087783	0.329795
  	0.332019	0.088432	0.332374
  	0.337237	0.089063	0.334907
  	0.342463	0.089678	0.337393
  	0.347697	0.090276	0.339832
  	0.352939	0.090859	0.342223
  	0.358188	0.091428	0.344564
  	0.363444	0.091985	0.346855
  	0.368706	0.09253	0.349094
  	0.373974	0.093066	0.35128
  	0.379247	0.093593	0.353414
  	0.384526	0.094114	0.355492
  	0.389809	0.094629	0.357516
  	0.395095	0.095141	0.359483
  	0.400385	0.095651	0.361394
  	0.405678	0.09616	0.363246
  	0.410973	0.096672	0.36504
  	0.41627	0.097187	0.366775
  	0.421568	0.097707	0.36845
  	0.426866	0.098234	0.370064
  	0.432165	0.09877	0.371616
  	0.437464	0.099316	0.373105
  	0.442761	0.099875	0.374533
  	0.448056	0.100449	0.375897
  	0.453349	0.10104	0.377199
  	0.458638	0.101651	0.378437
  	0.463923	0.102283	0.379612
  	0.469206	0.102936	0.380721
  	0.474482	0.103615	0.381766
  	0.479753	0.104321	0.382748
  	0.485018	0.105056	0.383665
  	0.490276	0.105822	0.384519
  	0.495527	0.106618	0.385308
  	0.500769	0.10745	0.386033
  	0.506003	0.108318	0.386696
  	0.511228	0.109223	0.387296
  	0.516443	0.110166	0.387832
  	0.521648	0.11115	0.388308
  	0.526842	0.112176	0.388722
  	0.532025	0.113245	0.389075
  	0.537196	0.114356	0.389368
  	0.542355	0.115514	0.389603
  	0.547501	0.116717	0.389779
  	0.552635	0.117966	0.389897
  	0.557755	0.119263	0.389959
  	0.562861	0.120608	0.389966
  	0.567953	0.122	0.389917
  	0.57303	0.123441	0.389815
  	0.578092	0.124932	0.389661
  	0.58314	0.126472	0.389455
  	0.588172	0.128061	0.389198
  	0.593187	0.129699	0.388893
  	0.598187	0.131387	0.388539
  	0.603171	0.133124	0.388137
  	0.608138	0.134911	0.387691
  	0.613088	0.136746	0.387199
  	0.618021	0.13863	0.386663
  	0.622936	0.140563	0.386085
  	0.627835	0.142544	0.385465
  	0.632715	0.144572	0.384805
  	0.637577	0.146649	0.384106
  	0.642421	0.148773	0.383369
  	0.647246	0.150944	0.382595
  	0.652052	0.153162	0.381784
  	0.65684	0.155426	0.380939
  	0.661608	0.157737	0.380061
  	0.666356	0.160093	0.379149
  	0.671084	0.162495	0.378207
  	0.675792	0.164943	0.377234
  	0.680479	0.167435	0.376231
  	0.685145	0.169973	0.3752
  	0.68979	0.172556	0.374142
  	0.694412	0.175184	0.373058
  	0.699013	0.177857	0.371949
  	0.70359	0.180574	0.370817
  	0.708144	0.183336	0.369661
  	0.712674	0.186143	0.368485
  	0.71718	0.188996	0.367287
  	0.721661	0.191893	0.366072
  	0.726116	0.194835	0.364838
  	0.730545	0.197823	0.363587
  	0.734946	0.200857	0.362322
  	0.73932	0.203937	0.361042
  	0.743666	0.207064	0.359751
  	0.747981	0.210237	0.358448
  	0.752267	0.213457	0.357137
  	0.756521	0.216724	0.355817
  	0.760744	0.22004	0.354492
  	0.764933	0.223404	0.353162
  	0.769088	0.226817	0.35183
  	0.773208	0.230279	0.350498
  	0.777292	0.23379	0.349167
  	0.781339	0.237352	0.347839
  	0.785347	0.240965	0.346518
  	0.789316	0.244628	0.345205
  	0.793244	0.248344	0.343903
  	0.79713	0.252111	0.342614
  	0.800973	0.25593	0.341341
  	0.804772	0.259802	0.340086
  	0.808525	0.263726	0.338854
  	0.812231	0.267704	0.337645
  	0.81589	0.271734	0.336464
  	0.819499	0.275818	0.335314
  	0.823058	0.279955	0.334198
  	0.826566	0.284144	0.33312
  	0.830022	0.288387	0.332082
  	0.833425	0.292681	0.331088
  	0.836774	0.297028	0.330142
  	0.840068	0.301426	0.329246
  	0.843306	0.305874	0.328407
  	0.846488	0.310372	0.327624
  	0.849614	0.314919	0.326903
  	0.852682	0.319514	0.326248
  	0.855693	0.324156	0.325659
  	0.858647	0.328843	0.325143
  	0.861543	0.333573	0.324701
  	0.864381	0.338347	0.324334
  	0.867163	0.343161	0.324049
  	0.869888	0.348014	0.323846
  	0.872556	0.352906	0.323726
  	0.875167	0.357833	0.323693
  	0.877725	0.362793	0.323749
  	0.880227	0.367787	0.323895
  	0.882676	0.372812	0.32413
  	0.885071	0.377865	0.324458
  	0.887416	0.382944	0.324881
  	0.88971	0.388049	0.325396
  	0.891954	0.393178	0.326005
  	0.894148	0.398329	0.326707
  	0.896296	0.403501	0.327504
  	0.898398	0.408689	0.328396
  	0.900456	0.413895	0.329381
  	0.902469	0.419117	0.330459
  	0.904439	0.424354	0.331628
  	0.906368	0.429605	0.332888
  	0.908257	0.434867	0.334239
  	0.910106	0.44014	0.335678
  	0.911918	0.445423	0.337206
  	0.913692	0.450714	0.338819
  	0.915431	0.456014	0.340519
  	0.917136	0.46132	0.342301
  	0.918807	0.466632	0.344167
  	0.920445	0.47195	0.346113
  	0.922052	0.477272	0.348138
  	0.923629	0.482598	0.350241
  	0.925175	0.487928	0.352419
  	0.926693	0.493262	0.354673
  	0.928181	0.498598	0.356999
  	0.929643	0.503937	0.359396
  	0.931076	0.509278	0.361863
  	0.932483	0.514622	0.364398
  	0.933866	0.519967	0.367
  	0.935228	0.52531	0.369668
  	0.936566	0.530654	0.372399
  	0.937878	0.536	0.375192
  	0.939167	0.541348	0.378047
  	0.940431	0.546697	0.380961
  	0.941678	0.552045	0.383933
  	0.942907	0.55739	0.386962
  	0.944112	0.562738	0.390046
  	0.945294	0.568088	0.393186
  	0.946455	0.573439	0.396378
  	0.947606	0.578783	0.399622
  	0.948735	0.584131	0.402917
  	0.94984	0.589482	0.406262
  	0.95093	0.594832	0.409656
  	0.952008	0.600178	0.413097
  	0.953063	0.605528	0.416585
  	0.954095	0.610882	0.42012
  	0.955125	0.616226	0.423698
  	0.956132	0.621576	0.427321
  	0.957114	0.626932	0.430989
  	0.958096	0.632279	0.434696
  	0.959056	0.637631	0.438446
  	0.959992	0.642988	0.442239
  	0.960929	0.648337	0.446068
  	0.961842	0.653692	0.449939
  	0.962738	0.65905	0.45385
  	0.96363	0.664403	0.457796
  	0.964496	0.669765	0.461784
  	0.965358	0.675123	0.465805
  	0.966203	0.680483	0.469865
  	0.967027	0.68585	0.473962
  	0.967853	0.69121	0.478091
  	0.96865	0.696581	0.48226
  	0.969448	0.701946	0.486459
  	0.970226	0.707317	0.490695
  	0.970991	0.712691	0.494965
  	0.97175	0.718064	0.499268
  	0.972484	0.723446	0.503607
  	0.973224	0.728821	0.507974
  	0.973931	0.73421	0.51238
  	0.974649	0.73959	0.516812
  	0.975338	0.744983	0.521282
  	0.976029	0.750371	0.52578
  	0.976698	0.755768	0.530313
  	0.977365	0.761164	0.534875
  	0.978015	0.766566	0.539471
  	0.978658	0.77197	0.544097
  	0.979289	0.777378	0.548754
  	0.979912	0.782789	0.553443
  	0.980524	0.788204	0.558162
  	0.981127	0.793622	0.562912
  	0.981721	0.799045	0.567694
  	0.982307	0.80447	0.572504
  	0.982882	0.809901	0.577347
  	0.983454	0.815332	0.582218
  	0.98401	0.820772	0.587122
  	0.984569	0.82621	0.592051
  	0.985107	0.831659	0.597017
  	0.985656	0.837103	0.602004
  	0.986177	0.842562	0.60703
  	0.986718	0.848012	0.612074
  	0.987228	0.853478	0.617159
  	0.987758	0.858937	0.622261
  	0.988265	0.864408	0.6274
  	0.98878	0.869878	0.632561
  	0.989286	0.875354	0.637753
  	0.989787	0.880835	0.642973
  	0.990295	0.886316	0.648216
  	0.990783	0.891809	0.653494
  	0.991296	0.897294	0.658786
  	0.991784	0.902793	0.664115
  	0.992294	0.908288	0.669459
  	0.992792	0.913792	0.674833
  	0.993292	0.919299	0.680231
  	0.993803	0.924807	0.685647
  	0.994294	0.930328	0.691097
];

%-- Modify the colormap by interpolation ---------------------------------%
%   Note: Interpolation can be done in hsv or rgb space depending on opt_interp.
p = size(cm,1); % default size of colormap
if strcmp(opt_interp, 'hsv')
    hsv = rgb2hsv(cm);
    hsv = interp1(1:p, hsv, linspace(1,p,n), 'linear');
    cm = hsv2rgb(hsv);
elseif strcmp(opt_interp, 'none') % do nothing
else
    cm = interp1(1:p, cm, linspace(1,p,n), 'linear');
end

end
