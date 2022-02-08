
function cm = oslo(n, opt_interp)
% Colormap: oslo

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
	0.003670408	0.005082388	0.002453649
	0.005662642	0.009394417	0.010694514
	0.007673677	0.013900263	0.019153884
	0.009707940	0.018228235	0.027418159
	0.011980919	0.022573088	0.035903564
	0.014040477	0.026934897	0.043974731
	0.016150192	0.031315305	0.051380285
	0.018293923	0.035926833	0.058122519
	0.020472811	0.040332956	0.064433388
	0.022689486	0.044608038	0.070257434
	0.024946606	0.048671736	0.075728032
	0.027246732	0.052453011	0.080952408
	0.029592219	0.056240380	0.085836510
	0.031983696	0.059842442	0.090619432
	0.034477240	0.063258368	0.095162704
	0.037056633	0.066552774	0.099530295
	0.039346361	0.069830373	0.103998364
	0.041491926	0.072992601	0.108476310
	0.043238440	0.076021634	0.113096779
	0.045050614	0.079043698	0.117653287
	0.046508295	0.082101942	0.122269949
	0.047783816	0.084963764	0.126971555
	0.049035050	0.087852623	0.131740452
	0.049924638	0.090659738	0.136487129
	0.050670590	0.093388431	0.141349411
	0.051244775	0.096125944	0.146190615
	0.051698386	0.098920710	0.151076753
	0.052159957	0.101711027	0.156034992
	0.052632030	0.104509350	0.160983288
	0.053115297	0.107414736	0.165953051
	0.053611994	0.110322495	0.170990886
	0.054125237	0.113244551	0.176024489
	0.054654996	0.116178102	0.181122140
	0.055200857	0.119133041	0.186265500
	0.055776930	0.122093297	0.191398925
	0.056384200	0.125156296	0.196606245
	0.056955085	0.128228497	0.201776816
	0.057498123	0.131313475	0.207042749
	0.058135986	0.134437068	0.212303282
	0.058866563	0.137573990	0.217588117
	0.059600819	0.140732490	0.222913393
	0.060280684	0.143905518	0.228260374
	0.060942946	0.147106057	0.233598735
	0.061698825	0.150350275	0.239005489
	0.062585236	0.153582948	0.244412961
	0.063380873	0.156879716	0.249856356
	0.064199032	0.160147335	0.255348819
	0.065066734	0.163519546	0.260829442
	0.065965499	0.166855225	0.266347708
	0.066905695	0.170203315	0.271860652
	0.067879524	0.173571886	0.277439349
	0.068913004	0.176974547	0.283021396
	0.069886534	0.180376824	0.288612454
	0.070923621	0.183812909	0.294222637
	0.071974075	0.187281445	0.299872474
	0.073117680	0.190722754	0.305543011
	0.074222190	0.194231424	0.311213122
	0.075341209	0.197696336	0.316910479
	0.076503074	0.201185660	0.322635468
	0.077709283	0.204732409	0.328361620
	0.078959130	0.208255544	0.334121632
	0.080254793	0.211814271	0.339892197
	0.081609406	0.215345643	0.345665567
	0.082886932	0.218921406	0.351474549
	0.084299075	0.222493896	0.357308748
	0.085598287	0.226090294	0.363129949
	0.087109394	0.229650201	0.368991688
	0.088529010	0.233251857	0.374855793
	0.090014643	0.236896067	0.380746595
	0.091563619	0.240476167	0.386631042
	0.093033375	0.244101509	0.392549751
	0.094704148	0.247757809	0.398482321
	0.096247667	0.251395435	0.404417973
	0.097978802	0.255038801	0.410388305
	0.099641870	0.258671762	0.416348960
	0.101383268	0.262321065	0.422323092
	0.103202829	0.265984330	0.428327910
	0.104970868	0.269646995	0.434330808
	0.106919337	0.273307582	0.440352813
	0.108794222	0.276973846	0.446385631
	0.110796068	0.280624088	0.452440305
	0.112828918	0.284308506	0.458486223
	0.114835618	0.287987584	0.464562064
	0.116986437	0.291686627	0.470635092
	0.119187675	0.295360264	0.476720686
	0.121395908	0.299066467	0.482819061
	0.123708342	0.302746338	0.488928846
	0.126126125	0.306472087	0.495055592
	0.128540791	0.310183342	0.501188257
	0.131066254	0.313894075	0.507326626
	0.133636645	0.317616205	0.513481526
	0.136253006	0.321349418	0.519639641
	0.138999391	0.325089874	0.525817477
	0.141836364	0.328866383	0.532001939
	0.144743931	0.332645315	0.538201527
	0.147724388	0.336416678	0.544400167
	0.150787730	0.340234565	0.550616209
	0.153953661	0.344048992	0.556845521
	0.157229104	0.347913608	0.563082854
	0.160607346	0.351778530	0.569319338
	0.164133460	0.355698612	0.575583373
	0.167706204	0.359624174	0.581839953
	0.171419477	0.363586590	0.588109191
	0.175264994	0.367587143	0.594392097
	0.179225642	0.371628739	0.600673666
	0.183304827	0.375717634	0.606965874
	0.187564871	0.379846383	0.613241566
	0.191893641	0.384020204	0.619534830
	0.196416664	0.388241374	0.625804401
	0.201015395	0.392510875	0.632071728
	0.205826725	0.396828919	0.638320235
	0.210739245	0.401218000	0.644544052
	0.215817232	0.405645681	0.650747941
	0.221030234	0.410127153	0.656915039
	0.226371938	0.414649222	0.663036170
	0.231854540	0.419234257	0.669101483
	0.237473714	0.423854124	0.675105026
	0.243179979	0.428531653	0.681034185
	0.249055348	0.433240409	0.686890152
	0.255035701	0.437997581	0.692653440
	0.261091203	0.442773356	0.698295457
	0.267238891	0.447562638	0.703832538
	0.273507975	0.452397909	0.709242145
	0.279816259	0.457215013	0.714499054
	0.286168369	0.462048502	0.719618843
	0.292592066	0.466878681	0.724569323
	0.299049151	0.471692736	0.729348055
	0.305518182	0.476476766	0.733948193
	0.311961495	0.481232483	0.738357202
	0.318440338	0.485956321	0.742578385
	0.324875679	0.490645856	0.746591295
	0.331287705	0.495266428	0.750404939
	0.337672418	0.499826735	0.754011834
	0.343988325	0.504348273	0.757408534
	0.350271606	0.508783903	0.760601499
	0.356472994	0.513144025	0.763583869
	0.362597447	0.517440536	0.766368705
	0.368661838	0.521642477	0.768950306
	0.374637512	0.525784341	0.771348301
	0.380535682	0.529840051	0.773545896
	0.386338000	0.533806809	0.775570828
	0.392077912	0.537715743	0.777426972
	0.397732078	0.541523266	0.779107516
	0.403303227	0.545275640	0.780636471
	0.408789541	0.548950608	0.782021398
	0.414204336	0.552547828	0.783259555
	0.419551368	0.556072043	0.784376498
	0.424822806	0.559551132	0.785364012
	0.430026232	0.562964240	0.786242973
	0.435177106	0.566312942	0.787015529
	0.440254791	0.569606949	0.787686898
	0.445286441	0.572867371	0.788275442
	0.450271965	0.576075880	0.788785205
	0.455212081	0.579234357	0.789217916
	0.460097947	0.582351609	0.789581766
	0.464960743	0.585450858	0.789884877
	0.469791680	0.588496760	0.790133602
	0.474581738	0.591533744	0.790333167
	0.479344778	0.594534536	0.790488499
	0.484077066	0.597517124	0.790604252
	0.488801133	0.600473958	0.790684780
	0.493499377	0.603419979	0.790734126
	0.498197293	0.606340578	0.790756027
	0.502852198	0.609259960	0.790753930
	0.507519303	0.612153181	0.790731014
	0.512163679	0.615042252	0.790690209
	0.516809440	0.617927186	0.790634223
	0.521439341	0.620809209	0.790565568
	0.526076266	0.623680595	0.790486581
	0.530700221	0.626540471	0.790399449
	0.535320595	0.629403414	0.790306232
	0.539944427	0.632270039	0.790208883
	0.544572918	0.635131045	0.790109272
	0.549201534	0.637996556	0.790009202
	0.553823706	0.640860832	0.789910431
	0.558449735	0.643729647	0.789814691
	0.563097461	0.646609165	0.789723697
	0.567733740	0.649492755	0.789639159
	0.572383333	0.652375812	0.789562824
	0.577036542	0.655270173	0.789496497
	0.581693058	0.658180312	0.789442055
	0.586367946	0.661092941	0.789401460
	0.591046735	0.664025953	0.789376772
	0.595738898	0.666963629	0.789370158
	0.600443041	0.669929127	0.789383893
	0.605160312	0.672903835	0.789420374
	0.609891669	0.675893717	0.789482126
	0.614636145	0.678905994	0.789571817
	0.619411196	0.681940613	0.789692284
	0.624191370	0.685007040	0.789846584
	0.628989834	0.688095968	0.790038007
	0.633816093	0.691207385	0.790269958
	0.638656850	0.694353389	0.790545940
	0.643522512	0.697537424	0.790869519
	0.648417463	0.700757996	0.791244344
	0.653336191	0.704010808	0.791674340
	0.658290032	0.707306721	0.792163662
	0.663272922	0.710647256	0.792717086
	0.668281372	0.714028269	0.793339387
	0.673322033	0.717467779	0.794030877
	0.678396941	0.720942780	0.794794446
	0.683508095	0.724483538	0.795640217
	0.688661574	0.728073522	0.796572026
	0.693840305	0.731726165	0.797594696
	0.699066410	0.735436684	0.798713149
	0.704334306	0.739216360	0.799929723
	0.709643452	0.743052374	0.801240862
	0.714987397	0.746953835	0.802662074
	0.720375702	0.750930337	0.804197940
	0.725810918	0.754971365	0.805840612
	0.731277424	0.759078743	0.807605742
	0.736793792	0.763262692	0.809490406
	0.742352236	0.767518971	0.811496345
	0.747950311	0.771853663	0.813624577
	0.753582289	0.776256434	0.815889749
	0.759256633	0.780731364	0.818274073
	0.764976225	0.785283592	0.820796504
	0.770725656	0.789903269	0.823450233
	0.776511898	0.794597810	0.826237457
	0.782330034	0.799363806	0.829159985
	0.788178364	0.804194324	0.832209692
	0.794063565	0.809095410	0.835391481
	0.799970907	0.814055567	0.838704024
	0.805899856	0.819083392	0.842152382
	0.811858052	0.824175863	0.845718784
	0.817832760	0.829331398	0.849419876
	0.823830304	0.834536550	0.853234555
	0.829847755	0.839799506	0.857174160
	0.835874018	0.845109025	0.861230062
	0.841916944	0.850469494	0.865398473
	0.847964180	0.855881097	0.869677017
	0.854023828	0.861331187	0.874061824
	0.860096465	0.866824514	0.878547935
	0.866167742	0.872361903	0.883130472
	0.872246523	0.877930032	0.887805785
	0.878323951	0.883534245	0.892574581
	0.884406622	0.889168945	0.897424923
	0.890486068	0.894835516	0.902352179
	0.896570573	0.900524182	0.907359000
	0.902650860	0.906243399	0.912432713
	0.908728190	0.911982728	0.917579244
	0.914805748	0.917748750	0.922781981
	0.920877895	0.923530849	0.928040981
	0.926952563	0.929328063	0.933357841
	0.933023569	0.935148009	0.938728534
	0.939097383	0.940983933	0.944141729
	0.945168322	0.946834611	0.949593761
	0.951234545	0.952699147	0.955087997
	0.957299561	0.958577792	0.960613943
	0.963366960	0.964462142	0.966166020
	0.969433500	0.970363927	0.971750766
	0.975500553	0.976273978	0.977357049
	0.981574920	0.982200369	0.982983361
	0.987647308	0.988126907	0.988627623
	0.993723117	0.994067716	0.994287373
	0.999801372	1.000000000	0.999961164
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
