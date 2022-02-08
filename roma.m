
function cm = roma(n, opt_interp)
% Colormap: roma

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
	0.492324683	0.090787413	7.63e-05000
	0.496730160	0.102802151	0.003675324
	0.501125025	0.114033636	0.007133660
	0.505472886	0.124684891	0.010420993
	0.509813379	0.134889960	0.013816522
	0.514124675	0.144643030	0.016840815
	0.518397426	0.154036339	0.019719788
	0.522633534	0.163192891	0.022451189
	0.526849835	0.172040555	0.025034359
	0.531015987	0.180681528	0.027528434
	0.535141767	0.189147032	0.030132025
	0.539224883	0.197417856	0.032868765
	0.543266028	0.205523624	0.035925483
	0.547254180	0.213477457	0.038888107
	0.551202885	0.221318096	0.041993900
	0.555100457	0.229015163	0.045011961
	0.558954439	0.236607415	0.047967483
	0.562776019	0.244052983	0.051012191
	0.566540347	0.251456304	0.053998163
	0.570256723	0.258726884	0.057032680
	0.573939922	0.265921839	0.060051400
	0.577577369	0.273023619	0.063001067
	0.581177547	0.280047754	0.065873282
	0.584738713	0.286992720	0.068856437
	0.588248865	0.293879629	0.071712388
	0.591737223	0.300697139	0.074563839
	0.595173992	0.307449579	0.077376133
	0.598577480	0.314151362	0.080251998
	0.601947694	0.320797499	0.083076118
	0.605281611	0.327363685	0.085853442
	0.608593146	0.333907735	0.088710868
	0.611855124	0.340386844	0.091524640
	0.615091706	0.346825701	0.094279188
	0.618308916	0.353217086	0.096978594
	0.621487269	0.359572273	0.099752711
	0.624649918	0.365895939	0.102505588
	0.627784914	0.372174110	0.105218199
	0.630900900	0.378439186	0.107955519
	0.633994342	0.384669734	0.110735830
	0.637068067	0.390893565	0.113480369
	0.640129012	0.397078494	0.116218843
	0.643171090	0.403272680	0.118959769
	0.646208187	0.409445014	0.121673899
	0.649242121	0.415612074	0.124470050
	0.652260696	0.421775618	0.127266951
	0.655276453	0.427960847	0.130151886
	0.658296857	0.434132037	0.132973943
	0.661314848	0.440330925	0.135825066
	0.664334343	0.446543042	0.138776796
	0.667363548	0.452780207	0.141759202
	0.670401677	0.459031398	0.144786361
	0.673439876	0.465303214	0.147847771
	0.676494142	0.471628352	0.150966025
	0.679554318	0.477966730	0.154159937
	0.682636621	0.484345135	0.157427540
	0.685735153	0.490782241	0.160788609
	0.688849301	0.497239226	0.164248088
	0.691977173	0.503744039	0.167747850
	0.695119993	0.510296849	0.171370877
	0.698284699	0.516904356	0.175114811
	0.701471619	0.523556255	0.178955568
	0.704681121	0.530258088	0.182899020
	0.707908370	0.537021044	0.187010356
	0.711162432	0.543824761	0.191227997
	0.714425703	0.550691670	0.195604591
	0.717724519	0.557616601	0.200114822
	0.721029935	0.564591732	0.204828690
	0.724366110	0.571629734	0.209677702
	0.727716742	0.578726604	0.214707632
	0.731086588	0.585886270	0.219945583
	0.734480359	0.593098328	0.225345591
	0.737879323	0.600364199	0.230968512
	0.741297238	0.607699230	0.236807568
	0.744731239	0.615074328	0.242822072
	0.748175404	0.622516476	0.249103092
	0.751624326	0.630012723	0.255598816
	0.755073950	0.637557929	0.262333766
	0.758522806	0.645147414	0.269324744
	0.761963497	0.652786125	0.276546752
	0.765405944	0.660470359	0.284010069
	0.768820155	0.668197207	0.291755273
	0.772224415	0.675947250	0.299742395
	0.775597804	0.683727099	0.307980766
	0.778939490	0.691533694	0.316504641
	0.782242247	0.699352958	0.325256630
	0.785493386	0.707187721	0.334298823
	0.788687493	0.715018708	0.343564451
	0.791811839	0.722840856	0.353090843
	0.794864083	0.730654150	0.362848022
	0.797827929	0.738438198	0.372842425
	0.800699206	0.746187242	0.383071987
	0.803460582	0.753892542	0.393496313
	0.806106979	0.761536552	0.404131251
	0.808623780	0.769113247	0.414949558
	0.810996894	0.776617483	0.425935836
	0.813218222	0.784025127	0.437088350
	0.815281104	0.791321521	0.448362516
	0.817166998	0.798507634	0.459756628
	0.818864947	0.805561568	0.471252719
	0.820371180	0.812478350	0.482813408
	0.821675008	0.819239995	0.494440065
	0.822757434	0.825841915	0.506080241
	0.823612930	0.832269609	0.517752789
	0.824237082	0.838506473	0.529400269
	0.824620157	0.844553483	0.541003201
	0.824754686	0.850392095	0.552560573
	0.824634165	0.856022196	0.564037417
	0.824252959	0.861429061	0.575406899
	0.823606430	0.866610718	0.586656420
	0.822692459	0.871563602	0.597769405
	0.821501706	0.876272705	0.608733579
	0.820030595	0.880744035	0.619513409
	0.818285350	0.884971671	0.630101281
	0.816266334	0.888951978	0.640489676
	0.813954635	0.892681088	0.650660233
	0.811370744	0.896159996	0.660599903
	0.808501576	0.899389347	0.670313911
	0.805347192	0.902364315	0.679761461
	0.801918002	0.905092376	0.688973299
	0.798209563	0.907568431	0.697906067
	0.794227521	0.909793555	0.706586255
	0.789962582	0.911771077	0.714982628
	0.785430567	0.913506316	0.723105373
	0.780623431	0.914991388	0.730952960
	0.775551481	0.916236655	0.738520874
	0.770217247	0.917248557	0.745802809
	0.764624179	0.918014118	0.752799723
	0.758772942	0.918541533	0.759517125
	0.752664986	0.918837667	0.765957039
	0.746317774	0.918903145	0.772107546
	0.739731426	0.918739305	0.777980843
	0.732896879	0.918350001	0.783574271
	0.725833942	0.917737089	0.788893044
	0.718537361	0.916895861	0.793938206
	0.711029882	0.915827957	0.798707993
	0.703300006	0.914552369	0.803212158
	0.695359787	0.913054361	0.807458041
	0.687216569	0.911340647	0.811442155
	0.678874366	0.909413855	0.815168424
	0.670351407	0.907279705	0.818642867
	0.661634996	0.904933379	0.821879830
	0.652735474	0.902379285	0.824863166
	0.643676312	0.899623530	0.827614479
	0.634463757	0.896663912	0.830135269
	0.625085526	0.893500198	0.832423416
	0.615566519	0.890145143	0.834490909
	0.605913681	0.886598264	0.836335773
	0.596144958	0.882852090	0.837970256
	0.586260244	0.878924671	0.839393571
	0.576278083	0.874813611	0.840612522
	0.566189761	0.870519957	0.841631502
	0.556024006	0.866057905	0.842458037
	0.545812920	0.861420153	0.843089946
	0.535526765	0.856618918	0.843538448
	0.525216971	0.851658299	0.843810575
	0.514877385	0.846543305	0.843909021
	0.504532199	0.841286270	0.843838319
	0.494179817	0.835884167	0.843604582
	0.483841608	0.830350288	0.843215701
	0.473542761	0.824684964	0.842677365
	0.463292527	0.818902241	0.841989563
	0.453114602	0.813010194	0.841160351
	0.443005375	0.807017840	0.840201201
	0.432982076	0.800920440	0.839108370
	0.423056888	0.794738132	0.837899626
	0.413268601	0.788473579	0.836570708
	0.403598693	0.782136313	0.835133869
	0.394061727	0.775727331	0.833595431
	0.384683885	0.769261082	0.831958567
	0.375471847	0.762745148	0.830226589
	0.366445653	0.756186290	0.828408927
	0.357593300	0.749581150	0.826514197
	0.348916396	0.742957781	0.824539771
	0.340447435	0.736291439	0.822503841
	0.332185275	0.729618174	0.820394345
	0.324113026	0.722919366	0.818230249
	0.316281940	0.716223876	0.816018350
	0.308652906	0.709513899	0.813745699
	0.301224650	0.702803577	0.811437319
	0.294036499	0.696098766	0.809085676
	0.287066561	0.689401365	0.806695986
	0.280321860	0.682707450	0.804271841
	0.273816020	0.676033844	0.801816048
	0.267484027	0.669377078	0.799343166
	0.261414302	0.662738700	0.796835784
	0.255542733	0.656120257	0.794320159
	0.249859926	0.649522003	0.791778441
	0.244402505	0.642944458	0.789229002
	0.239162191	0.636401718	0.786665490
	0.234103256	0.629874075	0.784089656
	0.229232538	0.623384679	0.781503048
	0.224529836	0.616915199	0.778909074
	0.220061701	0.610472314	0.776314776
	0.215727033	0.604065271	0.773710251
	0.211566343	0.597674619	0.771113689
	0.207553027	0.591317111	0.768502114
	0.203708726	0.584989434	0.765902439
	0.199968346	0.578679345	0.763292243
	0.196441974	0.572403488	0.760690524
	0.192987651	0.566142978	0.758086354
	0.189676641	0.559913008	0.755482392
	0.186487469	0.553693129	0.752873493
	0.183398302	0.547501121	0.750275947
	0.180424180	0.541320957	0.747679312
	0.177586119	0.535163949	0.745074378
	0.174796955	0.529025928	0.742478331
	0.172081621	0.522884718	0.739880396
	0.169501834	0.516754713	0.737273347
	0.166958715	0.510627769	0.734672809
	0.164484601	0.504517577	0.732066351
	0.162088700	0.498396840	0.729453449
	0.159698612	0.492261614	0.726836470
	0.157413395	0.486127527	0.724214938
	0.155180000	0.479992458	0.721582585
	0.152959539	0.473827887	0.718948385
	0.150804844	0.467660960	0.716305773
	0.148653910	0.461471488	0.713643797
	0.146548780	0.455259883	0.710976542
	0.144487523	0.449025011	0.708292474
	0.142408578	0.442760182	0.705594617
	0.140344137	0.436466220	0.702885720
	0.138310141	0.430142406	0.700156461
	0.136209607	0.423782362	0.697412721
	0.134204972	0.417407228	0.694652031
	0.132132702	0.410984160	0.691883668
	0.130085807	0.404520634	0.689093645
	0.127966764	0.398041813	0.686278536
	0.125858773	0.391517094	0.683450593
	0.123663108	0.384945303	0.680600287
	0.121475459	0.378353463	0.677746893
	0.119285501	0.371713922	0.674860483
	0.117002659	0.365048531	0.671961968
	0.114651807	0.358342871	0.669046199
	0.112324300	0.351596879	0.666107162
	0.109889574	0.344819244	0.663159446
	0.107324230	0.337993590	0.660181748
	0.104641223	0.331129798	0.657195314
	0.101951315	0.324236560	0.654180343
	0.099118525	0.317304766	0.651154034
	0.096135191	0.310337728	0.648100548
	0.093031001	0.303295018	0.645033427
	0.089832165	0.296240100	0.641950417
	0.086378410	0.289140404	0.638843772
	0.082770792	0.281987392	0.635716952
	0.078888221	0.274774037	0.632572165
	0.074822520	0.267513191	0.629402094
	0.070429443	0.260236512	0.626216943
	0.065707422	0.252891465	0.623014106
	0.060588467	0.245474592	0.619790673
	0.054957033	0.238037638	0.616543536
	0.048861023	0.230520750	0.613271164
	0.041962570	0.222979974	0.609991729
	0.034075732	0.215342601	0.606696420
	0.026245616	0.207675027	0.603381020
	0.018221548	0.199912910	0.600047595
	0.009823884	0.192129265	0.596704092
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
