#! /usr/bin/ruby
#0) filter
#1) prefix
#2) number of rings (optional, default 128) - 36 - A (48) B (192) C (128) D (36) E (15) F (6) G (2) H (20)
#3) addparams map
#4) run type: 0 generate maps - 1 iterative (S0) - 2 (S1) 

load ENV["AGILE"] + "/scripts/conf.rb"

if ARGV[0].to_s == "help" || ARGV[0] == nil || ARGV[0] == "h"
	system("head -6 " + $0 );
	exit;
end

lock = true

filter = ARGV[0]
prefix = ARGV[1];
indexmax = ARGV[2];
addparams = ARGV[3];
runtype = ARGV[4];

p = Parameters.new
p.processInput(5, ARGV)

#catfile = ""
sleepsecs = 30
#for i in 5...ARGV.size
#	if ARGV[i] == nil
#		break;
#	else
#		keyw = ARGV[i].split("=")[0];
#		value = ARGV[i].split("=")[1];
#		case keyw
#			when "catfile"
#				catfile = value;
#			when "sleepsecs"
#				sleepsecs = value
#		end
#	end
#end


b = Array.new(indexmax.to_i)
l = Array.new(indexmax.to_i);

index = 0;
if indexmax.to_i == 48 then #A

      b[0]=       0.0000000;   l[0]=     22.500000
      b[1]=       0.0000000;   l[1]=     67.500000
      b[2]=       0.0000000;   l[2]=     112.50000
      b[3]=       0.0000000;   l[3]=     157.50000
      b[4]=       0.0000000;   l[4]=     202.50000
      b[5]=       0.0000000;   l[5]=     247.50000
      b[6]=       0.0000000;   l[6]=     292.50000
      b[7]=       0.0000000;   l[7]=     337.50000
      b[8]=      -19.471221;   l[8]=     0.0000000
      b[9]=      -19.471221;   l[9]=     45.000000
      b[10]=      -19.471221;   l[10]=     90.000000
      b[11]=      -19.471221;   l[11]=     135.00000
      b[12]=      -19.471221;   l[12]=     180.00000
      b[13]=      -19.471221;   l[13]=     225.00000
      b[14]=      -19.471221;   l[14]=     270.00000
      b[15]=      -19.471221;   l[15]=     315.00000
      b[16]=       19.471221;   l[16]=     0.0000000
      b[17]=       19.471221;   l[17]=     45.000000
      b[18]=       19.471221;   l[18]=     90.000000
      b[19]=       19.471221;   l[19]=     135.00000
      b[20]=       19.471221;   l[20]=     180.00000
      b[21]=       19.471221;   l[21]=     225.00000
      b[22]=       19.471221;   l[22]=     270.00000
      b[23]=       19.471221;   l[23]=     315.00000                            
      b[24]=      -41.810315;   l[24]=     22.500000
      b[25]=      -41.810315;   l[25]=     67.500000
      b[26]=      -41.810315;   l[26]=     112.50000
      b[27]=      -41.810315;   l[27]=     157.50000
      b[28]=      -41.810315;   l[28]=     202.50000
      b[29]=      -41.810315;   l[29]=     247.50000
      b[30]=      -41.810315;   l[30]=     292.50000
      b[31]=      -41.810315;   l[31]=     337.50000
      b[32]=      -66.443536;   l[32]=     45.000000
      b[33]=      -66.443536;   l[33]=     135.00000
      b[34]=      -66.443536;   l[34]=     225.00000
      b[35]=      -66.443536;   l[35]=     315.00000
      b[36]=       66.443536;   l[36]=     45.000000
      b[37]=       66.443536;   l[37]=     135.00000
      b[38]=       66.443536;   l[38]=     225.00000
      b[39]=       66.443536;   l[39]=     315.00000
      b[40]=       41.810315;   l[40]=     22.500000
      b[41]=       41.810315;   l[41]=     67.500000
      b[42]=       41.810315;   l[42]=     112.50000
      b[43]=       41.810315;   l[43]=     157.50000
      b[44]=       41.810315;   l[44]=     202.50000
      b[45]=       41.810315;   l[45]=     247.50000
      b[46]=       41.810315;   l[46]=     292.50000
      b[47]=       41.810315;   l[47]=     337.50000
      mapsize = 75

end

if indexmax.to_i == 192 then #B

	b[0]= 0.0000000; l[0]= 11.250000
	b[1]= 0.0000000; l[1]= 33.750000
	b[2]= 0.0000000; l[2]= 56.250000
	b[3]= 0.0000000; l[3]= 78.750000
	b[4]= 0.0000000; l[4]= 101.25000
	b[5]= 0.0000000; l[5]= 123.75000
	b[6]= 0.0000000; l[6]= 146.25000
	b[7]= 0.0000000; l[7]= 168.75000
	b[8]= 0.0000000; l[8]= 191.25000
	b[9]= 0.0000000; l[9]= 213.75000
	b[10]= 0.0000000; l[10]= 236.25000
	b[11]= 0.0000000; l[11]= 258.75000
	b[12]= 0.0000000; l[12]= 281.25000
	b[13]= 0.0000000; l[13]= 303.75000
	b[14]= 0.0000000; l[14]= 326.25000
	b[15]= 0.0000000; l[15]= 348.75000

	b[16]= 9.5940682; l[16]= 0.0000000
	b[17]= 9.5940682; l[17]= 22.500000
	b[18]= 9.5940682; l[18]= 45.000000
	b[19]= 9.5940682; l[19]= 67.500000
	b[20]= 9.5940682; l[20]= 90.000000
	b[21]= 9.5940682; l[21]= 112.50000
	b[22]= 9.5940682; l[22]= 135.00000
	b[23]= 9.5940682; l[23]= 157.50000
	b[24]= 9.5940682; l[24]= 180.00000
	b[25]= 9.5940682; l[25]= 202.50000
	b[26]= 9.5940682; l[26]= 225.00000
	b[27]= 9.5940682; l[27]= 247.50000
	b[28]= 9.5940682; l[28]= 270.00000
	b[29]= 9.5940682; l[29]= 292.50000
	b[30]= 9.5940682; l[30]= 315.00000
	b[31]= 9.5940682; l[31]= 337.50000
	b[32]= -9.5940682; l[32]= 0.0000000
	b[33]= -9.5940682; l[33]= 22.500000
	b[34]= -9.5940682; l[34]= 45.000000
	b[35]= -9.5940682; l[35]= 67.500000
	b[36]= -9.5940682; l[36]= 90.000000
	b[37]= -9.5940682; l[37]= 112.50000
	b[38]= -9.5940682; l[38]= 135.00000
	b[39]= -9.5940682; l[39]= 157.50000
	b[40]= -9.5940682; l[40]= 180.00000
	b[41]= -9.5940682; l[41]= 202.50000
	b[42]= -9.5940682; l[42]= 225.00000
	b[43]= -9.5940682; l[43]= 247.50000
	b[44]= -9.5940682; l[44]= 270.00000
	b[45]= -9.5940682; l[45]= 292.50000
	b[46]= -9.5940682; l[46]= 315.00000
	b[47]= -9.5940682; l[47]= 337.50000

	b[48]= 19.471221; l[48]= 11.250000
	b[49]= 19.471221; l[49]= 33.750000
	b[50]= 19.471221; l[50]= 56.250000
	b[51]= 19.471221; l[51]= 78.750000
	b[52]= 19.471221; l[52]= 101.25000
	b[53]= 19.471221; l[53]= 123.75000
	b[54]= 19.471221; l[54]= 146.25000
	b[55]= 19.471221; l[55]= 168.75000
	b[56]= 19.471221; l[56]= 191.25000
	b[57]= 19.471221; l[57]= 213.75000
	b[58]= 19.471221; l[58]= 236.25000
	b[59]= 19.471221; l[59]= 258.75000
	b[60]= 19.471221; l[60]= 281.25000
	b[61]= 19.471221; l[61]= 303.75000
	b[62]= 19.471221; l[62]= 326.25000
	b[63]= 19.471221; l[63]= 348.75000
	b[64]= -19.471221; l[64]= 11.250000
	b[65]= -19.471221; l[65]= 33.750000
	b[66]= -19.471221; l[66]= 56.250000
	b[67]= -19.471221; l[67]= 78.750000
	b[68]= -19.471221; l[68]= 101.25000
	b[69]= -19.471221; l[69]= 123.75000
	b[70]= -19.471221; l[70]= 146.25000
	b[71]= -19.471221; l[71]= 168.75000
	b[72]= -19.471221; l[72]= 191.25000
	b[73]= -19.471221; l[73]= 213.75000
	b[74]= -19.471221; l[74]= 236.25000
	b[75]= -19.471221; l[75]= 258.75000
	b[76]= -19.471221; l[76]= 281.25000
	b[77]= -19.471221; l[77]= 303.75000
	b[78]= -19.471221; l[78]= 326.25000
	b[79]= -19.471221; l[79]= 348.75000

	b[80]= 30.000000; l[80]= 0.0000000
	b[81]= 30.000000; l[81]= 22.500000
	b[82]= 30.000000; l[82]= 45.000000
	b[83]= 30.000000; l[83]= 67.500000
	b[84]= 30.000000; l[84]= 90.000000
	b[85]= 30.000000; l[85]= 112.50000
	b[86]= 30.000000; l[86]= 135.00000
	b[87]= 30.000000; l[87]= 157.50000
	b[88]= 30.000000; l[88]= 180.00000
	b[89]= 30.000000; l[89]= 202.50000
	b[90]= 30.000000; l[90]= 225.00000
	b[91]= 30.000000; l[91]= 247.50000
	b[92]= 30.000000; l[92]= 270.00000
	b[93]= 30.000000; l[93]= 292.50000
	b[94]= 30.000000; l[94]= 315.00000
	b[95]= 30.000000; l[95]= 337.50000
	b[96]= -30.000000; l[96]= 0.0000000
	b[97]= -30.000000; l[97]= 22.500000
	b[98]= -30.000000; l[98]= 45.000000
	b[99]= -30.000000; l[99]= 67.500000
	b[100]= -30.000000; l[100]= 90.000000
	b[101]= -30.000000; l[101]= 112.50000
	b[102]= -30.000000; l[102]= 135.00000
	b[103]= -30.000000; l[103]= 157.50000
	b[104]= -30.000000; l[104]= 180.00000
	b[105]= -30.000000; l[105]= 202.50000
	b[106]= -30.000000; l[106]= 225.00000
	b[107]= -30.000000; l[107]= 247.50000
	b[108]= -30.000000; l[108]= 270.00000
	b[109]= -30.000000; l[109]= 292.50000
	b[110]= -30.000000; l[110]= 315.00000
	b[111]= -30.000000; l[111]= 337.50000

	b[112]= 41.810315; l[112]= 11.250000
	b[113]= 41.810315; l[113]= 33.750000
	b[114]= 41.810315; l[114]= 56.250000
	b[115]= 41.810315; l[115]= 78.750000
	b[116]= 41.810315; l[116]= 101.25000
	b[117]= 41.810315; l[117]= 123.75000
	b[118]= 41.810315; l[118]= 146.25000
	b[119]= 41.810315; l[119]= 168.75000
	b[120]= 41.810315; l[120]= 191.25000
	b[121]= 41.810315; l[121]= 213.75000
	b[122]= 41.810315; l[122]= 236.25000
	b[123]= 41.810315; l[123]= 258.75000
	b[124]= 41.810315; l[124]= 281.25000
	b[125]= 41.810315; l[125]= 303.75000
	b[126]= 41.810315; l[126]= 326.25000
	b[127]= 41.810315; l[127]= 348.75000
	b[128]= -41.810315; l[128]= 11.250000
	b[129]= -41.810315; l[129]= 33.750000
	b[130]= -41.810315; l[130]= 56.250000
	b[131]= -41.810315; l[131]= 78.750000
	b[132]= -41.810315; l[132]= 101.25000
	b[133]= -41.810315; l[133]= 123.75000
	b[134]= -41.810315; l[134]= 146.25000
	b[135]= -41.810315; l[135]= 168.75000
	b[136]= -41.810315; l[136]= 191.25000
	b[137]= -41.810315; l[137]= 213.75000
	b[138]= -41.810315; l[138]= 236.25000
	b[139]= -41.810315; l[139]= 258.75000
	b[140]= -41.810315; l[140]= 281.25000
	b[141]= -41.810315; l[141]= 303.75000
	b[142]= -41.810315; l[142]= 326.25000
	b[143]= -41.810315; l[143]= 348.75000

	b[144]= 54.340912; l[144]= 15.000000
	b[145]= 54.340912; l[145]= 45.000000
	b[146]= 54.340912; l[146]= 75.000000
	b[147]= 54.340912; l[147]= 105.00000
	b[148]= 54.340912; l[148]= 135.00000
	b[149]= 54.340912; l[149]= 165.00000
	b[150]= 54.340912; l[150]= 195.00000
	b[151]= 54.340912; l[151]= 225.00000
	b[152]= 54.340912; l[152]= 255.00000
	b[153]= 54.340912; l[153]= 285.00000
	b[154]= 54.340912; l[154]= 315.00000
	b[155]= 54.340912; l[155]= 345.00000
	b[156]= -54.340912; l[156]= 15.000000
	b[157]= -54.340912; l[157]= 45.000000
	b[158]= -54.340912; l[158]= 75.000000
	b[159]= -54.340912; l[159]= 105.00000
	b[160]= -54.340912; l[160]= 135.00000
	b[161]= -54.340912; l[161]= 165.00000
	b[162]= -54.340912; l[162]= 195.00000
	b[163]= -54.340912; l[163]= 225.00000
	b[164]= -54.340912; l[164]= 255.00000
	b[165]= -54.340912; l[165]= 285.00000
	b[166]= -54.340912; l[166]= 315.00000
	b[167]= -54.340912; l[167]= 345.00000

	b[168]= -66.443536; l[168]= 22.500000
	b[169]= -66.443536; l[169]= 67.500000
	b[170]= -66.443536; l[170]= 112.50000
	b[171]= -66.443536; l[171]= 157.50000
	b[172]= -66.443536; l[172]= 202.50000
	b[173]= -66.443536; l[173]= 247.50000
	b[174]= -66.443536; l[174]= 292.50000
	b[175]= -66.443536; l[175]= 337.50000

	b[176]= -78.284148; l[176]= 45.000000
	b[177]= -78.284148; l[177]= 135.00000
	b[178]= -78.284148; l[178]= 225.00000
	b[179]= -78.284148; l[179]= 315.00000
	b[180]= 78.284148; l[180]= 45.000000
	b[181]= 78.284148; l[181]= 135.00000
	b[182]= 78.284148; l[182]= 225.00000
	b[183]= 78.284148; l[183]= 315.00000

	b[184]= 66.443536; l[184]= 22.500000
	b[185]= 66.443536; l[185]= 67.500000
	b[186]= 66.443536; l[186]= 112.50000
	b[187]= 66.443536; l[187]= 157.50000
	b[188]= 66.443536; l[188]= 202.50000
	b[189]= 66.443536; l[189]= 247.50000
	b[190]= 66.443536; l[190]= 292.50000
	b[191]= 66.443536; l[191]= 337.50000

	binit = 4;
	diameter_sky = 30
	mapsize = 50

end

if indexmax.to_i == 48 then #solo piano galattico

	b[0]= 0.0000000; l[0]= 348.75000 #11.250000
	b[1]= 0.0000000; l[1]= 33.750000
	b[2]= 0.0000000; l[2]= 56.250000
	b[3]= 0.0000000; l[3]= 78.750000
	b[4]= 0.0000000; l[4]= 101.25000
	b[5]= 0.0000000; l[5]= 123.75000
	b[6]= 0.0000000; l[6]= 146.25000
	b[7]= 0.0000000; l[7]= 168.75000
	b[8]= 0.0000000; l[8]= 191.25000
	b[9]= 0.0000000; l[9]= 213.75000
	b[10]= 0.0000000; l[10]= 236.25000
	b[11]= 0.0000000; l[11]= 258.75000
	b[12]= 0.0000000; l[12]= 281.25000
	b[13]= 0.0000000; l[13]= 303.75000
	b[14]= 0.0000000; l[14]= 326.25000
	b[15]= 0.0000000; l[15]= 33.750000

	b[16]= 19.471221; l[16]= 11.250000
	b[17]= 19.471221; l[17]= 33.750000
	b[18]= 19.471221; l[18]= 56.250000
	b[19]= 19.471221; l[19]= 78.750000
	b[20]= 19.471221; l[20]= 101.25000
	b[21]= 19.471221; l[21]= 123.75000
	b[22]= 19.471221; l[22]= 146.25000
	b[23]= 19.471221; l[23]= 168.75000
	b[24]= 19.471221; l[24]= 191.25000
	b[25]= 19.471221; l[25]= 213.75000
	b[26]= 19.471221; l[26]= 236.25000
	b[27]= 19.471221; l[27]= 258.75000
	b[28]= 19.471221; l[28]= 281.25000
	b[29]= 19.471221; l[29]= 303.75000
	b[30]= 19.471221; l[30]= 326.25000
	b[31]= 19.471221; l[31]= 348.75000
	b[32]= -19.471221; l[32]= 11.250000
	b[33]= -19.471221; l[33]= 33.750000
	b[34]= -19.471221; l[34]= 56.250000
	b[35]= -19.471221; l[35]= 78.750000
	b[36]= -19.471221; l[36]= 101.25000
	b[37]= -19.471221; l[37]= 123.75000
	b[38]= -19.471221; l[38]= 146.25000
	b[39]= -19.471221; l[39]= 168.75000
	b[40]= -19.471221; l[40]= 191.25000
	b[41]= -19.471221; l[41]= 213.75000
	b[42]= -19.471221; l[42]= 236.25000
	b[43]= -19.471221; l[43]= 258.75000
	b[44]= -19.471221; l[44]= 281.25000
	b[45]= -19.471221; l[45]= 303.75000
	b[46]= -19.471221; l[46]= 326.25000
	b[47]= -19.471221; l[47]= 348.75000
	
	binit = 4;
	diameter_sky = 30
	mapsize = 50

end

if indexmax.to_i == 128 then #C

	b[0]= 0.0000000; l[0]= 11.250000
	b[1]= 0.0000000; l[1]= 33.750000
	b[2]= 0.0000000; l[2]= 56.250000
	b[3]= 0.0000000; l[3]= 78.750000
	b[4]= 0.0000000; l[4]= 101.25000
	b[5]= 0.0000000; l[5]= 123.75000
	b[6]= 0.0000000; l[6]= 146.25000
	b[7]= 0.0000000; l[7]= 168.75000
	b[8]= 0.0000000; l[8]= 191.25000
	b[9]= 0.0000000; l[9]= 213.75000
	b[10]= 0.0000000; l[10]= 236.25000
	b[11]= 0.0000000; l[11]= 258.75000
	b[12]= 0.0000000; l[12]= 281.25000
	b[13]= 0.0000000; l[13]= 303.75000
	b[14]= 0.0000000; l[14]= 326.25000
	b[15]= 0.0000000; l[15]= 348.75000

	b[16]= 19.471221; l[16]= 11.250000
	b[17]= 19.471221; l[17]= 33.750000
	b[18]= 19.471221; l[18]= 56.250000
	b[19]= 19.471221; l[19]= 78.750000
	b[20]= 19.471221; l[20]= 101.25000
	b[21]= 19.471221; l[21]= 123.75000
	b[22]= 19.471221; l[22]= 146.25000
	b[23]= 19.471221; l[23]= 168.75000
	b[24]= 19.471221; l[24]= 191.25000
	b[25]= 19.471221; l[25]= 213.75000
	b[26]= 19.471221; l[26]= 236.25000
	b[27]= 19.471221; l[27]= 258.75000
	b[28]= 19.471221; l[28]= 281.25000
	b[29]= 19.471221; l[29]= 303.75000
	b[30]= 19.471221; l[30]= 326.25000
	b[31]= 19.471221; l[31]= 348.75000
	b[32]= -19.471221; l[32]= 11.250000
	b[33]= -19.471221; l[33]= 33.750000
	b[34]= -19.471221; l[34]= 56.250000
	b[35]= -19.471221; l[35]= 78.750000
	b[36]= -19.471221; l[36]= 101.25000
	b[37]= -19.471221; l[37]= 123.75000
	b[38]= -19.471221; l[38]= 146.25000
	b[39]= -19.471221; l[39]= 168.75000
	b[40]= -19.471221; l[40]= 191.25000
	b[41]= -19.471221; l[41]= 213.75000
	b[42]= -19.471221; l[42]= 236.25000
	b[43]= -19.471221; l[43]= 258.75000
	b[44]= -19.471221; l[44]= 281.25000
	b[45]= -19.471221; l[45]= 303.75000
	b[46]= -19.471221; l[46]= 326.25000
	b[47]= -19.471221; l[47]= 348.75000

	b[48]= 41.810315; l[48]= 11.250000
	b[49]= 41.810315; l[49]= 33.750000
	b[50]= 41.810315; l[50]= 56.250000
	b[51]= 41.810315; l[51]= 78.750000
	b[52]= 41.810315; l[52]= 101.25000
	b[53]= 41.810315; l[53]= 123.75000
	b[54]= 41.810315; l[54]= 146.25000
	b[55]= 41.810315; l[55]= 168.75000
	b[56]= 41.810315; l[56]= 191.25000
	b[57]= 41.810315; l[57]= 213.75000
	b[58]= 41.810315; l[58]= 236.25000
	b[59]= 41.810315; l[59]= 258.75000
	b[60]= 41.810315; l[60]= 281.25000
	b[61]= 41.810315; l[61]= 303.75000
	b[62]= 41.810315; l[62]= 326.25000
	b[63]= 41.810315; l[63]= 348.75000
	b[64]= -41.810315; l[64]= 11.250000
	b[65]= -41.810315; l[65]= 33.750000
	b[66]= -41.810315; l[66]= 56.250000
	b[67]= -41.810315; l[67]= 78.750000
	b[68]= -41.810315; l[68]= 101.25000
	b[69]= -41.810315; l[69]= 123.75000
	b[70]= -41.810315; l[70]= 146.25000
	b[71]= -41.810315; l[71]= 168.75000
	b[72]= -41.810315; l[72]= 191.25000
	b[73]= -41.810315; l[73]= 213.75000
	b[74]= -41.810315; l[74]= 236.25000
	b[75]= -41.810315; l[75]= 258.75000
	b[76]= -41.810315; l[76]= 281.25000
	b[77]= -41.810315; l[77]= 303.75000
	b[78]= -41.810315; l[78]= 326.25000
	b[79]= -41.810315; l[79]= 348.75000

	b[80]= 54.340912; l[80]= 15.000000
	b[81]= 54.340912; l[81]= 45.000000
	b[82]= 54.340912; l[82]= 75.000000
	b[83]= 54.340912; l[83]= 105.00000
	b[84]= 54.340912; l[84]= 135.00000
	b[85]= 54.340912; l[85]= 165.00000
	b[86]= 54.340912; l[86]= 195.00000
	b[87]= 54.340912; l[87]= 225.00000
	b[88]= 54.340912; l[88]= 255.00000
	b[89]= 54.340912; l[89]= 285.00000
	b[90]= 54.340912; l[90]= 315.00000
	b[91]= 54.340912; l[91]= 345.00000
	b[92]= -54.340912; l[92]= 15.000000
	b[93]= -54.340912; l[93]= 45.000000
	b[94]= -54.340912; l[94]= 75.000000
	b[95]= -54.340912; l[95]= 105.00000
	b[96]= -54.340912; l[96]= 135.00000
	b[97]= -54.340912; l[97]= 165.00000
	b[98]= -54.340912; l[98]= 195.00000
	b[99]= -54.340912; l[99]= 225.00000
	b[100]= -54.340912; l[100]= 255.00000
	b[101]= -54.340912; l[101]= 285.00000
	b[102]= -54.340912; l[102]= 315.00000
	b[103]= -54.340912; l[103]= 345.00000

	b[104]= -66.443536; l[104]= 22.500000
	b[105]= -66.443536; l[105]= 67.500000
	b[106]= -66.443536; l[106]= 112.50000
	b[107]= -66.443536; l[107]= 157.50000
	b[108]= -66.443536; l[108]= 202.50000
	b[109]= -66.443536; l[109]= 247.50000
	b[110]= -66.443536; l[110]= 292.50000
	b[111]= -66.443536; l[111]= 337.50000

	b[112]= -78.284148; l[112]= 45.000000
	b[113]= -78.284148; l[113]= 135.00000
	b[114]= -78.284148; l[114]= 225.00000
	b[115]= -78.284148; l[115]= 315.00000
	b[116]= 78.284148; l[116]= 45.000000
	b[117]= 78.284148; l[117]= 135.00000
	b[118]= 78.284148; l[118]= 225.00000
	b[119]= 78.284148; l[119]= 315.00000

	b[120]= 66.443536; l[120]= 22.500000
	b[121]= 66.443536; l[121]= 67.500000
	b[122]= 66.443536; l[122]= 112.50000
	b[123]= 66.443536; l[123]= 157.50000
	b[124]= 66.443536; l[124]= 202.50000
	b[125]= 66.443536; l[125]= 247.50000
	b[126]= 66.443536; l[126]= 292.50000
	b[127]= 66.443536; l[127]= 337.50000

	binit = 4;
	diameter_sky = 30
	mapsize = 50

end



if indexmax.to_i == 36 then #D
	b[0] = 0; l[0] = 0
	b[1] = 0; l[1] = 10
	b[2] = 0; l[2] = 20
	b[3] = 0; l[3] = 30
	b[4] = 0; l[4] = 40
	b[5] = 0; l[5] = 50
	b[6] = 0; l[6] = 60
	b[7] = 0; l[7] = 70
	b[8] = 0; l[8] = 80
	b[9] = 0; l[9] = 90
	b[10] = 0; l[10] = 100
	b[11] = 0; l[11] = 110
	b[12] = 0; l[12] = 120
	b[13] = 0; l[13] = 130
	b[14] = 0; l[14] = 140
	b[15] = 0; l[15] = 150
	b[16] = 0; l[16] = 160
	b[17] = 0; l[17] = 170
	b[18] = 0; l[18] = 180
	b[19] = 0; l[19] = 190
	b[20] = 0; l[20] = 200
	b[21] = 0; l[21] = 210
	b[22] = 0; l[22] = 220
	b[23] = 0; l[23] = 230
	b[24] = 0; l[24] = 240
	b[25] = 0; l[25] = 250
	b[26] = 0; l[26] = 260
	b[27] = 0; l[27] = 270
	b[28] = 0; l[28] = 280
	b[29] = 0; l[29] = 290
	b[30] = 0; l[30] = 300
	b[31] = 0; l[31] = 310
	b[32] = 0; l[32] = 320
	b[33] = 0; l[33] = 330
	b[34] = 0; l[34] = 340
	b[35] = 0; l[35] = 350
	binit = 2;
	diameter_sky = 10
	mapsize = 30

end

if indexmax.to_i == 15 then #E

	#10 0
	b[0] = 0; 	l[0] = 0.0
	b[1] = 0; 	l[1] = 6.0 #
	b[2] = 0; 	l[2] = 12.3
	b[3] = 0;	l[3] = 16.7
	b[4] = 0; 	l[4] = 23.0
	b[5] = 0; 	l[5] = 26.0
	b[6] = 0; 	l[6] = 31.0
	b[7] = 0; 	l[7] = 35.0
	b[8] = 0; 	l[8] = 40.6
	b[9] = 0; 	l[9] = 49.2
	b[10] = 0; 	l[10] = 65.8
	b[11] = 1; 	l[11] = 135.3
	b[12] = -1.3; 	l[12] = 205.5
	b[13] = 0; 	l[13] = 348.2 #
	b[14] = 0; 	l[14] = 354.3
	binit = 1;
	diameter_sky = 6
	mapsize = 28 #diameter
end

if indexmax.to_i == 6 then #F
	b[0] = 0; 	l[0] = 78.0
	b[1] = -2.8; 	l[1] = 263.5
	b[2] = -1.4; 	l[2] = 287.0
	b[3] = 0; 	l[3] = 315.0
	b[4] = 0; 	l[4] = 333.0
	b[5] = -0.2; 	l[5] = 340.0
	binit = 1
	diameter_sky = 12
	mapsize = 34
end

if indexmax.to_i == 2 then #G

	b[0] = 0; 	l[0] = 6.0 
	b[1] = 0; 	l[1] = 348.2 
	binit = 1;
	diameter_sky = 6
	mapsize = 28 #diameter
end

#solo il centro galattico
if indexmax.to_i == 20 then #H
	b[0]= 0.0000000; l[0]= 11.250000
	b[1]= 0.0000000; l[1]= 33.750000
	b[2]= 0.0000000; l[2]= 326.25000
	b[3]= 0.0000000; l[3]= 348.75000
	b[4]= 19.471221; l[4]= 11.250000
	b[5]= 19.471221; l[5]= 33.750000
	b[6]= 19.471221; l[6]= 326.25000
	b[7]= 19.471221; l[7]= 348.75000
	b[8]= -19.471221; l[8]= 11.250000
	b[9]= -19.471221; l[9]= 33.750000
	b[10]= -19.471221; l[10]= 326.25000
	b[11]= -19.471221; l[11]= 348.75000
	b[12]= 41.810315; l[12]= 11.250000
	b[13]= 41.810315; l[13]= 33.750000
	b[14]= 41.810315; l[14]= 326.25000
	b[15]= 41.810315; l[15]= 348.75000
	b[16]= -41.810315; l[16]= 11.250000
	b[17]= -41.810315; l[17]= 33.75000
	b[18]= -41.810315; l[18]= 326.25000
	b[19]= -41.810315; l[19]= 348.75000
	binit = 4;
	diameter_sky = 30
	mapsize = 50
end


while index.to_i < indexmax.to_i

	system("hostname")

	l1 = l[index];
	b1 = b[index];		

	dir = format("%04d", l1) + "." + format("%04d", b1);

	if lock == true
		sss = rand(sleepsecs)
		puts "lock activated... wait for " + sss.to_s
		sleep(sss)
	end
	
	if runtype.to_i == 0
		if File.exists?(dir) == false
			cmd = "mkdir " + dir.to_s;
			puts cmd
			system(cmd);	
	
			cmd = "cd " + dir.to_s + "; ruby " + PATH + "scripts/map.rb " + filter.to_s + " " + prefix + " 111412735.	182692800.0 " + l1.to_s + " " + b1.to_s + " " + addparams.to_s
			puts cmd
			system cmd
		end
	end
	if runtype.to_i == 1
		dir2 = dir + "/S0/";
		if File.exists?(dir2) == false
			cmd = "mkdir -p " + dir2.to_s;
			puts cmd
			system(cmd);
			cmd = "cp " + dir.to_s + "/* " + dir2.to_s
			puts cmd
			system(cmd)
			
			#cmd = "cd " + dir2.to_s + "; iterative5.rb FM3.119_ASDCe_I0023 FM3.119_ASDCe_I0023_B05.maplist4  outfile=S0.R0 scanitmax=15 binstep=1"
			cmd = "cd " + dir2.to_s + "; iterative5.rb " + filter.to_s + "  " + prefix.to_s + ".maplist4  outfile=S0.R0 scanitmax=15 binstep=1"
			
			puts cmd
			system(cmd)
			filelist = Dir[dir0.to_s + "/S0.R0_??"].sort!
			fileinput = filelist[filelist.size()-1];
			cmd = "cd " + dir2.to_s + "; convertMultiResToInput.rb " + fileinput.to_s + " S1.R0.multi 1 0 0"
			puts cmd
			system(cmd)
		end
	end
	
	if runtype.to_i == 2
		dir2 = dir + "/S1/";
		dir0 = dir + "/S0/";
		if File.exists?(dir2) == false
			cmd = "mkdir -p " + dir2.to_s;
			puts cmd
			system(cmd);
			cmd = "cp " + dir.to_s + "/* " + dir2.to_s
			puts cmd
			system(cmd)
			if File.exists?(dir0) == false
				filelist = Dir[dir0.to_s + "/S1.R*.multi"].sort!
				filemulti = filelist[filelist.size()-1];
				filemultibase = filemulti.split(".multi")[0]
				cmd = "cp " + dir0.to_s + "/" + filemulti.to_s + " " + dir2.to_s
				puts cmd
				system(cmd)
				
				cmd = "cd " + dir2.to_s + "; multi5.rb " + prefix.to_s + ".maplist4 " + filemulti.to_s + " " + filemultibase.to_s + " flag=" + filemultibase.to_s
				puts cmd
				system(cmd)
				
			end
			
			
		
		end
	end
	
	index = index.to_i + 1
end

