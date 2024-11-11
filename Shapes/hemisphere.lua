local strokesData = {
  [1] = {
    x = { 112.52803298186, 115.16685979802, 117.80345761728, 120.43559744278, 123.06103896291, 125.6775758102, 128.28297898777, 130.87505344284, 133.45161543735, 136.01045860381, 138.54943314829, 141.06641190624, 143.55922245429, 146.02579420144, 148.46401129784, 150.87182578189, 153.24718969198, 155.58812295475, 157.89261155268, 160.15870935654, 162.38451549586, 164.56812910022, 166.70771718741, 168.80146940461, 170.84760934315, 172.84440585316, 174.79016172889, 176.68323633812, 178.52202299272, 180.30498289283, 182.03059986796, 183.69740300648, 185.30398928496, 186.84900093879, 188.33113677691, 189.74912955235, 191.10179122109, 192.3879563685, 193.60657272704, 194.75657671441, 195.83700658071, 196.84694583482, 197.78555718858, 198.65201466851, 199.4456054482, 200.16567327477, 200.81156189532, 201.38278477754, 201.87881013029, 202.29924193889, 202.64371813279, 202.91193321496, 203.10369483539, 203.21879932942, 203.2571788088, 203.21879932942, 203.10369483539, 202.91193321496, 202.64371813279, 202.29924193889, 201.87881013029, 201.38278477754, 200.81156189532, 200.16567327477, 199.4456054482, 198.65201466851, 197.78555718858, 196.84694583482, 195.83700658071, 194.75657671441, 193.60657272704, 192.3879563685, 191.10179122109, 189.74912955235, 188.33113677691, 186.84900093879, 185.30398928496, 183.69740300648, 182.03059986796, 180.30498289283, 178.52202299272, 176.68323633812, 174.79016172889, 172.84440585316, 170.84760934315, 168.80146940461, 166.70771718741, 164.56812910022, 162.38451549586, 160.15870935654, 157.89261155268, 155.58812295475, 153.24718969198, 150.87182578189, 148.46401129784, 146.02579420144, 143.55922245429, 141.06641190624, 138.54943314829, 136.01045860381, 133.45161543735, 130.87505344284, 128.28297898777, 125.6775758102, 123.06103896291, 120.43559744278, 117.80345761728, 115.16685979802, 112.52803298186, 109.88919485101, 107.25259703174, 104.62045720625, 101.99501568611, 99.378478838823, 96.773064346551, 94.181001206186, 91.60443921168, 89.045596045212, 86.506610186029, 83.989642742788, 81.496832194734, 79.030260447588, 76.592043351187, 74.184228867137, 71.808853642338, 69.467931694281, 67.163454411049, 64.897333977785, 62.671527838458, 60.487914234097, 58.348326146913, 56.254573929708, 54.208445305873, 52.211648795862, 50.265904234838, 48.37281831091, 46.534031656305, 44.751060441494, 43.025466095767, 41.358651642545, 39.752065364069, 38.207053710235, 36.724917872117, 35.306925096678, 33.954263427941, 32.668098280524, 31.449493236696, 30.299477934613, 29.219048068316, 28.209108814205, 27.27049746045, 26.404028665813, 25.610437886117, 24.890392688959, 24.244481438999, 23.673269871487, 23.177244518738, 22.756824024839, 22.412347830938, 22.14412143407, 21.952371128337, 21.837244004904, 21.798864525524, 21.837244004904, 21.952371128337, 22.14412143407, 22.412347830938, 22.756824024839, 23.177244518738, 23.673269871487, 24.244481438999, 24.890392688959, 25.610437886117, 26.404028665813, 27.27049746045, 28.209108814205, 29.219048068316, 30.299477934613, 31.449493236696, 32.668098280524, 33.954263427941, 35.306925096678, 36.724917872117, 38.207053710235, 39.752065364069, 41.358651642545, 43.025466095767, 44.751060441494, 46.534031656305, 48.37281831091, 50.265904234838, 52.211648795862, 54.208445305873, 56.254573929708, 58.348326146913, 60.487914234097, 62.671527838458, 64.897333977785, 67.163454411049, 69.467931694281, 71.808853642338, 74.184228867137, 76.592043351187, 79.030260447588, 81.496832194734, 83.989642742788, 86.506610186029, 89.045596045212, 91.60443921168, 94.181001206186, 96.773064346551, 99.378478838823, 101.99501568611, 104.62045720625, 107.25259703174, 109.88919485101, 112.52803298186 },
    y = { 82.17795924832, 82.190348850301, 82.227472397425, 82.289329889692, 82.375842124166, 82.486952527323, 82.622570581522, 82.782571825009, 82.966820481323, 83.1751694593, 83.407426408953, 83.663410295004, 83.942906138057, 84.245653699897, 84.571426686423, 84.919930915306, 85.290883518921, 85.683967685527, 86.098832659269, 86.535150313702, 86.992535948856, 87.470616179465, 87.96898367615, 88.48720848012, 89.024849317879, 89.581464915934, 90.156580056673, 90.749708207781, 91.360340207533, 91.987966894204, 92.632056476658, 93.292065849055, 93.967429276145, 94.657581022678, 95.361932723993, 96.079884700725, 96.810848588214, 97.554190762978, 98.309277601539, 99.075486795121, 99.852162090833, 100.63862460637, 101.43425203297, 102.23834285891, 103.0502182019, 103.86919917963, 104.69458428039, 105.52568330718, 106.36179474828, 107.20219446259, 108.04619225309, 108.89305266395, 109.74208549817, 110.59255529993, 111.4437379281, 112.29492055628, 113.14539035804, 113.99441187756, 114.84128360312, 115.68528139362, 116.52568110792, 117.36179254903, 118.19289157582, 119.01827667658, 119.83725765431, 120.6491329973, 121.45322382324, 122.24883993513, 123.03532508008, 123.81198906109, 124.57819825467, 125.33328509323, 126.076627268, 126.80757984078, 127.52554313222, 128.22990614824, 128.92004658006, 129.59541000715, 130.25541937955, 130.89950896201, 131.52713564868, 132.13776764843, 132.73089579954, 133.30601094028, 133.86262653833, 134.40027869079, 134.91849218006, 135.41685967674, 135.89493990735, 136.35233685721, 136.78864319694, 137.20351948539, 137.59659233729, 137.9675449409, 138.31604916979, 138.64181084161, 138.94456971815, 139.2240542465, 139.48003813255, 139.71230639691, 139.92065537489, 140.1049040312, 140.26490527469, 140.40052332889, 140.51163373204, 140.59815728122, 140.66000345878, 140.69713832061, 140.70951660789, 140.69713832061, 140.66000345878, 140.59815728122, 140.51163373204, 140.40052332889, 140.26490527469, 140.1049040312, 139.92065537489, 139.71230639691, 139.48003813255, 139.2240542465, 138.94456971815, 138.64181084161, 138.31604916979, 137.9675449409, 137.59659233729, 137.20351948539, 136.78864319694, 136.35233685721, 135.89493990735, 135.41685967674, 134.91849218006, 134.40027869079, 133.86262653833, 133.30601094028, 132.73089579954, 132.13776764843, 131.52713564868, 130.89950896201, 130.25541937955, 129.59541000715, 128.92004658006, 128.22990614824, 127.52554313222, 126.80757984078, 126.076627268, 125.33328509323, 124.57819825467, 123.81198906109, 123.03532508008, 122.24883993513, 121.45322382324, 120.6491329973, 119.83725765431, 119.01827667658, 118.19289157582, 117.36179254903, 116.52568110792, 115.68528139362, 114.84128360312, 113.99441187756, 113.14539035804, 112.29492055628, 111.4437379281, 110.59255529993, 109.74208549817, 108.89305266395, 108.04619225309, 107.20219446259, 106.36179474828, 105.52568330718, 104.69458428039, 103.86919917963, 103.0502182019, 102.23834285891, 101.43425203297, 100.63862460637, 99.852162090833, 99.075486795121, 98.309277601539, 97.554190762978, 96.810848588214, 96.079884700725, 95.361932723993, 94.657581022678, 93.967429276145, 93.292065849055, 92.632056476658, 91.987966894204, 91.360340207533, 90.749708207781, 90.156580056673, 89.581464915934, 89.024849317879, 88.48720848012, 87.96898367615, 87.470616179465, 86.992535948856, 86.535150313702, 86.098832659269, 85.683967685527, 85.290883518921, 84.919930915306, 84.571426686423, 84.245653699897, 83.942906138057, 83.663410295004, 83.407426408953, 83.1751694593, 82.966820481323, 82.782571825009, 82.622570581522, 82.486952527323, 82.375842124166, 82.289329889692, 82.227472397425, 82.190348850301, 82.17795924832 },
    pressure = {},
    tool = "pen",
    color = 10820909,
    width = 1.41,
    fill = 0,
    lineStyle = "dot",
  },
  [2] = {
    x = { 87.852833787617, 87.689132635594, 87.504668999884, 87.341556212521, 87.199896105849, 87.079835771032, 86.981465725712, 86.904865172823, 86.8501133153, 86.817232782553, 86.806280148107, 86.817232782553, 86.8501133153, 86.904865172823, 86.981465725712, 87.079835771032, 87.199896105849, 87.341556212521, 87.504668999884, 87.689132635594, 87.894754769664, 88.121376996225, 88.368818279996, 88.636863641583, 88.92527547218, 89.233816162983, 89.562214161071, 89.910220542934, 90.277507182126, 90.663791211024, 91.068733188476, 91.491993673332, 91.933199280328, 92.391987938902, 92.86798626379, 93.360775610907, 93.869937336167, 94.395041480781, 94.935646771252, 95.491300619381, 96.061527807557, 96.645841803466, 97.243767389497, 97.854772774514, 98.478348796793, 99.113974979903, 99.761108218003, 100.41920540525, 101.08770080641, 101.76605131562, 102.45364593882, 103.14994157017, 103.8543159009, 104.56619188104, 105.28496983124, 106.01002744271, 106.7407650361, 107.47656030263, 108.21677961881, 108.96081199058, 109.70801247975, 110.45777009225, 111.20942857519, 111.9623656198, 112.7159476026, 113.46951827069, 114.2224553153, 114.97412511295, 115.72388272545, 116.47108321462, 117.21511558639, 117.95533490258, 118.6911301691, 119.42186776249, 120.14692537397, 120.86570332416, 121.57757930431, 122.28196494974, 122.97823795168, 123.66585520429, 124.34418308409, 125.01268979995, 125.6707869872, 126.3179202253, 126.95354640841, 127.57712243069, 128.18812781571, 128.78604208703, 129.37036739765, 129.94059458582, 130.49623711925, 131.03685372442, 131.56195786904, 132.071130909, 132.56390894141, 133.0398959516, 133.49869592488, 133.93991284658, 134.36316201673, 134.76810399418, 135.15437670837, 135.52168597697, 135.86968104413, 136.19809035693, 136.50663104773, 136.79504287833, 137.06307692521, 137.25965860998 },
    y = { 138.44217418649, 136.42156022244, 133.86364486178, 131.28803330249, 128.69690928264, 126.0924565403, 123.47688144293, 120.85239035802, 118.22121228245, 115.58558752781, 112.94771114688, 110.30984608065, 107.67421001132, 105.04304325045, 102.41855216554, 99.802977068173, 97.198524325827, 94.607388991272, 92.031777431986, 89.473862071329, 86.935815332662, 84.419764380526, 81.927859008872, 79.462203752832, 77.024869203422, 74.617937266361, 72.243433273848, 69.903359928667, 67.599719933605, 65.334448103217, 63.10945662265, 60.926635047639, 58.787827675101, 56.694844857837, 54.649463004531, 52.653401950346, 50.708347586327, 48.81596317411, 46.977844087101, 45.195540439885, 43.470557088228, 41.804364943782, 40.198355715261, 38.653909796677, 37.172317064399, 35.75484476539, 34.402680943674, 33.116979699162, 31.898815928829, 30.749230585537, 29.669196733915, 28.659619550364, 27.721358952464, 26.855218284272, 26.061910372201, 25.342114098553, 24.696451772103, 24.125455183987, 23.629599551813, 23.209326149078, 22.864985731637, 22.59684985241, 22.405167434907, 22.290096884999, 22.251728720324, 22.290096884999, 22.405167434907, 22.59684985241, 22.864985731637, 23.209326149078, 23.629599551813, 24.125455183987, 24.696451772103, 25.342114098553, 26.061910372201, 26.855218284272, 27.721358952464, 28.659619550364, 29.669196733915, 30.749230585537, 31.898815928829, 33.116979699162, 34.402680943674, 35.75484476539, 37.172317064399, 38.653909796677, 40.198355715261, 41.804364943782, 43.470557088228, 45.195540439885, 46.977844087101, 48.81596317411, 50.708347586327, 52.653401950346, 54.649463004531, 56.694844857837, 58.787827675101, 60.926635047639, 63.10945662265, 65.334448103217, 67.599719933605, 69.903359928667, 72.243433273848, 74.617937266361, 77.024869203422, 79.462203752832, 81.927859008872, 83.907513740799 },
    pressure = {},
    tool = "pen",
    color = 10820909,
    width = 1.41,
    fill = 0,
    lineStyle = "dashdot",
  },
  [3] = {
    x = { 113.01232498552, 113.01232498552 },
    y = { 131.69096126246, 132.73836350484 },
    pressure = {},
    tool = "pen",
    color = 8421504,
    width = 0.85,
    fill = 0,
    lineStyle = "dot",
  },
  [4] = {
    x = { 87.934774881269, 87.79974519173, 87.615292870726, 87.452168768657, 87.31051997669, 87.190459641874, 87.092089596553, 87.015489043664, 86.960725871436, 86.927856653395, 86.916892704244, 86.927856653395, 86.960725871436, 87.015489043664, 87.092089596553, 87.190459641874, 87.31051997669, 87.452168768657, 87.615292870726, 87.79974519173, 88.0053673258, 88.232000867066, 88.479442150838, 88.747476197719, 89.035888028317, 89.34442871912, 89.672838031912, 90.02083309907, 90.388131052968, 90.774415081865, 91.179357059317, 91.602606229469, 92.043823151169, 92.502611809744, 92.978610134632, 93.471399481749, 93.980549892304, 94.505665351622, 95.046270642094, 95.601924490223, 96.172151678399, 96.756465674308, 97.354379945633, 97.96538533065, 98.588972667634, 99.224598850744, 99.871732088845, 100.5298292761, 101.19832467725, 101.87666387175, 102.56426980966, 103.26055412631, 103.96493977174, 104.67681575188, 105.39558238737, 106.12065131355, 106.85138890694, 107.58717285876, 108.32740348965, 109.07142454672, 109.81863635059, 110.56839396309, 111.32005244604, 111.35732308433 },
    y = { 138.03550105917, 136.36889027064, 133.81097490998, 131.23536335069, 128.64422801614, 126.03977527379, 123.42420017643, 120.79970909151, 118.16854233065, 115.53290626131, 112.89504119508, 110.25716481415, 107.62152874481, 104.99036198394, 102.36587089903, 99.750295801666, 97.14584305932, 94.554707724765, 91.979096165479, 89.421192119527, 86.883134066155, 84.367083114019, 81.875177742365, 79.409522486325, 76.972187936915, 74.565255999855, 72.190752007341, 69.850689976865, 67.547038667098, 65.28176683671, 63.056775356143, 60.873953781132, 58.735146408594, 56.64216359133, 54.596781738024, 52.600720683839, 50.655677634525, 48.763293222308, 46.925162820594, 45.142859173378, 43.417875821721, 41.751683677275, 40.145685763459, 38.60122853017, 37.119647112597, 35.702163498883, 34.350010991872, 33.064298432655, 31.846145977027, 30.696560633735, 29.616515467408, 28.606949598562, 27.668689000662, 26.802537017765, 26.009229105694, 25.289444146751, 24.643770505596, 24.07277391748, 23.576918285306, 23.156644882571, 22.81230446513, 22.544168585903, 22.3524861684, 22.346794871782 },
    pressure = {},
    tool = "pen",
    color = 14687012,
    width = 2.26,
    fill = 0,
    lineStyle = "plain",
  },
  [5] = {
    x = { 112.52803298186, 115.16685979802, 117.80345761728, 120.43559744278, 123.06103896291, 125.6775758102, 128.28297898777, 130.87505344284, 133.45161543735, 136.01045860381, 138.54943314829, 141.06641190624, 143.55922245429, 146.02579420144, 148.46401129784, 150.87182578189, 153.24718969198, 155.58812295475, 157.89261155268, 160.15870935654, 162.38451549586, 164.56812910022, 166.70771718741, 168.80146940461, 170.84760934315, 172.84440585316, 174.79016172889, 176.68323633812, 178.52202299272, 180.30498289283, 182.03059986796, 183.69740300648, 185.30398928496, 186.84900093879, 188.33113677691, 189.74912955235, 191.10179122109, 192.3879563685, 193.60657272704, 194.75657671441, 195.83700658071, 196.84694583482, 197.78555718858, 198.65201466851, 199.4456054482, 200.16567327477, 200.81156189532, 201.38278477754, 201.87881013029, 202.29924193889, 202.64371813279, 202.91193321496, 203.10369483539, 203.21879932942, 203.2571788088, 203.21879932942, 203.10369483539, 202.91193321496, 202.64371813279, 202.29924193889, 201.87881013029, 201.38278477754, 200.81156189532, 200.16567327477, 199.4456054482, 198.65201466851, 197.78555718858, 196.84694583482, 195.83700658071, 194.75657671441, 193.60657272704, 192.3879563685, 191.10179122109, 189.74912955235, 188.33113677691, 186.84900093879, 185.30398928496, 183.69740300648, 182.03059986796, 180.30498289283, 178.52202299272, 176.68323633812, 174.79016172889, 172.84440585316, 170.84760934315, 168.80146940461, 166.70771718741, 164.56812910022, 162.38451549586, 160.15870935654, 157.89261155268, 155.58812295475, 153.24718969198, 150.87182578189, 148.46401129784, 146.02579420144, 143.55922245429, 141.06641190624, 138.54943314829, 136.01045860381, 133.45161543735, 130.87505344284, 128.28297898777, 125.6775758102, 123.06103896291, 120.43559744278, 117.80345761728, 115.16685979802, 112.52803298186, 109.88919485101, 107.25259703174, 104.62045720625, 101.99501568611, 99.378478838823, 96.773064346551, 94.181001206186, 91.60443921168, 89.045596045212, 86.506610186029, 83.989642742788, 81.496832194734, 79.030260447588, 76.592043351187, 74.184228867137, 71.808853642338, 69.467931694281, 67.163454411049, 64.897333977785, 62.671527838458, 60.487914234097, 58.348326146913, 56.254573929708, 54.208445305873, 52.211648795862, 50.265904234838, 48.37281831091, 46.534031656305, 44.751060441494, 43.025466095767, 41.358651642545, 39.752065364069, 38.207053710235, 36.724917872117, 35.306925096678, 33.954263427941, 32.668098280524, 31.449493236696, 30.299477934613, 29.219048068316, 28.209108814205, 27.27049746045, 26.404028665813, 25.610437886117, 24.890392688959, 24.244481438999, 23.673269871487, 23.177244518738, 22.756824024839, 22.412347830938, 22.14412143407, 21.952371128337, 21.837244004904, 21.798864525524, 21.837244004904, 21.952371128337, 22.14412143407, 22.412347830938, 22.756824024839, 23.177244518738, 23.673269871487, 24.244481438999, 24.890392688959, 25.610437886117, 26.404028665813, 27.27049746045, 28.209108814205, 29.219048068316, 30.299477934613, 31.449493236696, 32.668098280524, 33.954263427941, 35.306925096678, 36.724917872117, 38.207053710235, 39.752065364069, 41.358651642545, 43.025466095767, 44.751060441494, 46.534031656305, 48.37281831091, 50.265904234838, 52.211648795862, 54.208445305873, 56.254573929708, 58.348326146913, 60.487914234097, 62.671527838458, 64.897333977785, 67.163454411049, 69.467931694281, 71.808853642338, 74.184228867137, 76.592043351187, 79.030260447588, 81.496832194734, 83.989642742788, 86.506610186029, 89.045596045212, 91.60443921168, 94.181001206186, 96.773064346551, 99.378478838823, 101.99501568611, 104.62045720625, 107.25259703174, 109.88919485101, 112.52803298186 },
    y = { 82.17795924832, 82.190348850301, 82.227472397425, 82.289329889692, 82.375842124166, 82.486952527323, 82.622570581522, 82.782571825009, 82.966820481323, 83.1751694593, 83.407426408953, 83.663410295004, 83.942906138057, 84.245653699897, 84.571426686423, 84.919930915306, 85.290883518921, 85.683967685527, 86.098832659269, 86.535150313702, 86.992535948856, 87.470616179465, 87.96898367615, 88.48720848012, 89.024849317879, 89.581464915934, 90.156580056673, 90.749708207781, 91.360340207533, 91.987966894204, 92.632056476658, 93.292065849055, 93.967429276145, 94.657581022678, 95.361932723993, 96.079884700725, 96.810848588214, 97.554190762978, 98.309277601539, 99.075486795121, 99.852162090833, 100.63862460637, 101.43425203297, 102.23834285891, 103.0502182019, 103.86919917963, 104.69458428039, 105.52568330718, 106.36179474828, 107.20219446259, 108.04619225309, 108.89305266395, 109.74208549817, 110.59255529993, 111.4437379281, 112.29492055628, 113.14539035804, 113.99441187756, 114.84128360312, 115.68528139362, 116.52568110792, 117.36179254903, 118.19289157582, 119.01827667658, 119.83725765431, 120.6491329973, 121.45322382324, 122.24883993513, 123.03532508008, 123.81198906109, 124.57819825467, 125.33328509323, 126.076627268, 126.80757984078, 127.52554313222, 128.22990614824, 128.92004658006, 129.59541000715, 130.25541937955, 130.89950896201, 131.52713564868, 132.13776764843, 132.73089579954, 133.30601094028, 133.86262653833, 134.40027869079, 134.91849218006, 135.41685967674, 135.89493990735, 136.35233685721, 136.78864319694, 137.20351948539, 137.59659233729, 137.9675449409, 138.31604916979, 138.64181084161, 138.94456971815, 139.2240542465, 139.48003813255, 139.71230639691, 139.92065537489, 140.1049040312, 140.26490527469, 140.40052332889, 140.51163373204, 140.59815728122, 140.66000345878, 140.69713832061, 140.70951660789, 140.69713832061, 140.66000345878, 140.59815728122, 140.51163373204, 140.40052332889, 140.26490527469, 140.1049040312, 139.92065537489, 139.71230639691, 139.48003813255, 139.2240542465, 138.94456971815, 138.64181084161, 138.31604916979, 137.9675449409, 137.59659233729, 137.20351948539, 136.78864319694, 136.35233685721, 135.89493990735, 135.41685967674, 134.91849218006, 134.40027869079, 133.86262653833, 133.30601094028, 132.73089579954, 132.13776764843, 131.52713564868, 130.89950896201, 130.25541937955, 129.59541000715, 128.92004658006, 128.22990614824, 127.52554313222, 126.80757984078, 126.076627268, 125.33328509323, 124.57819825467, 123.81198906109, 123.03532508008, 122.24883993513, 121.45322382324, 120.6491329973, 119.83725765431, 119.01827667658, 118.19289157582, 117.36179254903, 116.52568110792, 115.68528139362, 114.84128360312, 113.99441187756, 113.14539035804, 112.29492055628, 111.4437379281, 110.59255529993, 109.74208549817, 108.89305266395, 108.04619225309, 107.20219446259, 106.36179474828, 105.52568330718, 104.69458428039, 103.86919917963, 103.0502182019, 102.23834285891, 101.43425203297, 100.63862460637, 99.852162090833, 99.075486795121, 98.309277601539, 97.554190762978, 96.810848588214, 96.079884700725, 95.361932723993, 94.657581022678, 93.967429276145, 93.292065849055, 92.632056476658, 91.987966894204, 91.360340207533, 90.749708207781, 90.156580056673, 89.581464915934, 89.024849317879, 88.48720848012, 87.96898367615, 87.470616179465, 86.992535948856, 86.535150313702, 86.098832659269, 85.683967685527, 85.290883518921, 84.919930915306, 84.571426686423, 84.245653699897, 83.942906138057, 83.663410295004, 83.407426408953, 83.1751694593, 82.966820481323, 82.782571825009, 82.622570581522, 82.486952527323, 82.375842124166, 82.289329889692, 82.227472397425, 82.190348850301, 82.17795924832 },
    pressure = {},
    tool = "pen",
    color = 10820909,
    width = 1.41,
    fill = 0,
    lineStyle = "dot",
  },
  [6] = {
    x = { 90.260636956963, 136.97628182311 },
    y = { 137.15079296006, 84.847301823874 },
    pressure = {},
    tool = "pen",
    color = 8421504,
    width = 0.85,
    fill = 0,
    lineStyle = "dashdot",
  },
  [7] = {
    x = { 23.230887535171, 201.83073394872 },
    y = { 112.07424986455, 112.07424986455 },
    pressure = {},
    tool = "pen",
    color = 8421504,
    width = 0.85,
    fill = 0,
    lineStyle = "dot",
  },
  [8] = {
    x = { 113.01232498552, 113.01232498552 },
    y = { 22.516323096884, 112.55098364526 },
    pressure = {},
    tool = "pen",
    color = 8421504,
    width = 0.85,
    fill = 0,
    lineStyle = "dashdot",
  },
  [9] = {
    x = { 21.836576437308, 21.873190822707, 21.988272687321, 22.179955104824, 22.448079669346, 22.792431401492, 23.212704804227, 23.708549121695, 24.279545709812, 24.925219350967, 25.64500430991, 26.43831222198, 27.304464204878, 28.242724802777, 29.252301986328, 30.33233583795, 31.481921181243, 32.700084951575, 33.985786196087, 35.337950017803, 36.755422316813, 38.23701504909, 39.781460967674, 41.38745888149, 43.053662340642, 44.778634377593, 46.560949339514, 48.399068426524, 50.291452838741, 52.236495888055, 54.23255694224, 56.277938795545, 58.37092161281, 60.509728985348, 62.692550560359, 64.917542040926, 67.182825186018, 69.486465181081, 71.826527211557, 74.20103120407, 76.607974455835, 79.045297690541, 81.510964261286, 84.00286963294, 86.518909270371, 89.056967323743, 91.6148826844, 94.190494243686, 96.781618263536, 99.386071005882, 102.00165741795, 104.62613718816, 107.25731526373, 109.89295133307, 112.53081639929, 115.16868146552, 117.80431753487, 120.43549561043, 123.05997538064, 125.67555047801, 128.28000322035, 130.87113855491, 133.44675011419, 136.00466547485, 138.54271221352, 141.05876316565, 143.55066853731, 146.01633510805, 148.45365834276, 150.86059027982, 153.23509427233, 155.57516761751, 157.87880761258, 160.14407944296, 162.36907092353, 164.55189249854, 166.69069987108, 168.78368268834, 170.82907585635, 172.82513691054, 174.77017995985, 176.66256437207, 178.50068345908, 180.2829871063, 182.00797045795, 183.6741739171, 185.28017183092, 186.8246177495, 188.30621048178, 189.72368278079, 191.07584660251, 192.36154784702, 193.57971161735, 194.72929696064, 195.80933081227, 196.81890799582, 197.75716859372, 198.62330926191, 199.41661717398, 200.13641344763, 200.78207577408, 201.3530836769, 201.84892799437, 202.2692013971, 202.61355312925, 202.88167769377, 203.07336011127, 203.18843066118, 203.14288897353, 203.08443720747, 202.89268690174, 202.62446050487, 202.27998431097, 201.85955250237, 201.36352714962, 200.79232689681, 200.14641564685, 199.42637044969, 198.63276835529, 197.76629956066, 196.82769952161, 195.81774895279, 194.73731908649, 193.58731509912, 192.36872136999, 191.08253359317, 189.72987192443, 188.31189046369, 186.82975462558, 185.28474297174, 183.67815669327, 182.01135355475, 180.28573657961, 178.50278799421, 176.6639787102, 174.77090410097, 172.82514822524, 170.82836302994, 168.7822230914, 166.6884821889, 164.54889410171, 162.36526918265, 160.13946304332, 157.87336523947, 155.56886532683, 153.22795469347, 150.85257946868, 148.44476498462, 146.00653657352, 143.53998745578, 141.04715427832, 138.53019814978, 135.9912122906, 133.43235780943, 130.85580712963, 128.26373267456, 125.65832949699, 123.0417926497, 120.41633981486, 117.78419998936, 115.1476021701, 112.50877535394, 109.86994853779, 107.23333940382, 104.60121089303, 101.9757693729, 99.359232525608, 96.753829348041, 94.161743578267, 91.585192898465, 89.026338417292, 86.487363872814, 83.970396429573, 81.477574566814, 79.011014134373, 76.572797037972, 74.164982553922, 71.789607329123, 69.448674066361, 67.144196783129, 64.878098979276, 62.652292839948, 60.468667920882, 58.329079833699, 56.235327616493, 54.189187677953, 52.192413797352, 50.246646606918, 48.353571997695, 46.514774028386, 44.731825442984, 43.006208467847, 41.339405329331, 39.73280773615, 38.187796082315, 36.705660244197, 35.287678783463, 33.935017114726, 32.648840652604, 31.430235608776, 30.280231621399, 29.199801755101, 28.189851186285, 27.251251147236, 26.384793667303, 25.591191572902, 24.871135061039, 24.225235125784, 23.654023558272, 23.157998205524, 22.737566396919, 22.393101517723, 22.124863806151, 21.933113500418, 21.913165675492 },
    y = { 112.82700587388, 110.30984608065, 107.67421001132, 105.04304325045, 102.41855216554, 99.802977068173, 97.198524325827, 94.607388991272, 92.031777431986, 89.473862071329, 86.935815332662, 84.419764380526, 81.927859008872, 79.462203752832, 77.024869203422, 74.617937266361, 72.243433273848, 69.903359928667, 67.599719933605, 65.334448103217, 63.10945662265, 60.926635047639, 58.787827675101, 56.694844857837, 54.649463004531, 52.653401950346, 50.708347586327, 48.81596317411, 46.977844087101, 45.195540439885, 43.470557088228, 41.804364943782, 40.198355715261, 38.653909796677, 37.172317064399, 35.75484476539, 34.402680943674, 33.116979699162, 31.898815928829, 30.749230585537, 29.669196733915, 28.659619550364, 27.721358952464, 26.855218284272, 26.061910372201, 25.342114098553, 24.696451772103, 24.125455183987, 23.629599551813, 23.209326149078, 22.864985731637, 22.59684985241, 22.405167434907, 22.290096884999, 22.251728720324, 22.290096884999, 22.405167434907, 22.59684985241, 22.864985731637, 23.209326149078, 23.629599551813, 24.125455183987, 24.696451772103, 25.342114098553, 26.061910372201, 26.855218284272, 27.721358952464, 28.659619550364, 29.669196733915, 30.749230585537, 31.898815928829, 33.116979699162, 34.402680943674, 35.75484476539, 37.172317064399, 38.653909796677, 40.198355715261, 41.804364943782, 43.470557088228, 45.195540439885, 46.977844087101, 48.81596317411, 50.708347586327, 52.653401950346, 54.649463004531, 56.694844857837, 58.787827675101, 60.926635047639, 63.10945662265, 65.334448103217, 67.599719933605, 69.903359928667, 72.243433273848, 74.617937266361, 77.024869203422, 79.462203752832, 81.927859008872, 84.419764380526, 86.935815332662, 89.473862071329, 92.031777431986, 94.607388991272, 97.198524325827, 99.802977068173, 102.41855216554, 105.04304325045, 107.67421001132, 110.30984608065, 112.39417314859, 112.82596492102, 113.67498644054, 114.52185816611, 115.3658446419, 116.20625567091, 117.04235579731, 117.8734548241, 118.69885123957, 119.51782090259, 120.32969624557, 121.13378707151, 121.92941449811, 122.71588832836, 123.49255230937, 124.25876150295, 125.01384834151, 125.75719051627, 126.48815440376, 127.20610638049, 127.91045808181, 128.60060982834, 129.27597325543, 129.93598262783, 130.58007221028, 131.20769889695, 131.81833089671, 132.41145904781, 132.98657418855, 133.54318978661, 134.08083062437, 134.59906674304, 135.09742292502, 135.57550315563, 136.03288879078, 136.46921775992, 136.88408273366, 137.27715558556, 137.64810818918, 137.99661241806, 138.32238540459, 138.62513296643, 138.90462880948, 139.16061269553, 139.39286964519, 139.60121862316, 139.78546727948, 139.94546852296, 140.08107526246, 140.19219698032, 140.27870921479, 140.34056670706, 140.37770156889, 140.39007985617, 140.37770156889, 140.34056670706, 140.27870921479, 140.19219698032, 140.08107526246, 139.94546852296, 139.78546727948, 139.60121862316, 139.39286964519, 139.16061269553, 138.90462880948, 138.62513296643, 138.32238540459, 137.99661241806, 137.64810818918, 137.27715558556, 136.88408273366, 136.46921775992, 136.03288879078, 135.57550315563, 135.09742292502, 134.59906674304, 134.08083062437, 133.54318978661, 132.98657418855, 132.41145904781, 131.81833089671, 131.20769889695, 130.58007221028, 129.93598262783, 129.27597325543, 128.60060982834, 127.91045808181, 127.20610638049, 126.48815440376, 125.75719051627, 125.01384834151, 124.25876150295, 123.49255230937, 122.71588832836, 121.92941449811, 121.13378707151, 120.32969624557, 119.51782090259, 118.69885123957, 117.8734548241, 117.04235579731, 116.20625567091, 115.3658446419, 114.52185816611, 113.67498644054, 112.82596492102, 112.67857957361 },
    pressure = {},
    tool = "pen",
    color = 16711680,
    width = 2.26,
    fill = 0,
    lineStyle = "plain",
  },
}
return strokesData   -- Return the strokesData table