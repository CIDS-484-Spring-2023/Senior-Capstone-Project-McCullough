//package SeniorCapstoneProjectApplication;

import java.util.Scanner;

public class tradeAnalyzer {

	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		
		Double[] regressionValues = new Double[270];
		
		regressionValues[1] = 79.710258829259;
		regressionValues[2] = 70.2706486154282;
		regressionValues[3] = 64.7488306189113;
		regressionValues[4] = 60.8310384015976;
		regressionValues[5] = 57.7921626689812;
		regressionValues[6] = 55.3092204050847;
		regressionValues[7] = 53.2099226331595;
		regressionValues[8] = 51.391428187771;
		regressionValues[9] = 49.7874024085717;
		regressionValues[10] = 48.3525524551546;
		regressionValues[11] = 47.0545727879275;
		regressionValues[12] = 45.8696101912581;
		regressionValues[13] = 44.7795502702366;
		regressionValues[14] = 43.7703124193329;
		regressionValues[15] = 42.8307344586416;
		regressionValues[16] = 41.9518179739444;
		regressionValues[17] = 41.1262028443474;
		regressionValues[18] = 40.3477921947451;
		regressionValues[19] = 39.6114788857537;
		regressionValues[20] = 38.912942241328;
		regressionValues[21] = 38.2484944228199;
		regressionValues[22] = 37.6149625741009;
		regressionValues[23] = 37.0095971859776;
		regressionValues[24] = 36.4299999774315;
		regressionValues[25] = 35.8740665087115;
		regressionValues[26] = 35.33994005641;
		regressionValues[27] = 34.8259741982321;
		regressionValues[28] = 34.3307022055063;
		regressionValues[29] = 33.8528118090691;
		regressionValues[30] = 33.391124244815;
		regressionValues[31] = 32.9445767364208;
		regressionValues[32] = 32.5122077601178;
		regressionValues[33] = 32.0931445775879;
		regressionValues[34] = 31.6865926305208;
		regressionValues[35] = 31.2918264728898;
		regressionValues[36] = 30.9081819809185;
		regressionValues[37] = 30.5350496306065;
		regressionValues[38] = 30.1718686719271;
		regressionValues[39] = 29.818122059897;
		regressionValues[40] = 29.4733320275014;
		regressionValues[41] = 29.1370562053508;
		regressionValues[42] = 28.8088842089933;
		regressionValues[43] = 28.4884346278376;
		regressionValues[44] = 28.1753523602743;
		regressionValues[45] = 27.869306248302;
		regressionValues[46] = 27.569986972151;
		regressionValues[47] = 27.2771051713473;
		regressionValues[48] = 26.9903897636049;
		regressionValues[49] = 26.7095864370682;
		regressionValues[50] = 26.4344562948849;
		regressionValues[51] = 26.1647746340079;
		regressionValues[52] = 25.9003298425834;
		regressionValues[53] = 25.6409224023698;
		regressionValues[54] = 25.3863639844055;
		regressionValues[55] = 25.1364766276578;
		regressionValues[56] = 24.8910919916797;
		regressionValues[57] = 24.6500506754142;
		regressionValues[58] = 24.4132015952425;
		regressionValues[59] = 24.1804014161987;
		regressionValues[60] = 23.9515140309884;
		regressionValues[61] = 23.7264100820694;
		regressionValues[62] = 23.5049665225942;
		regressionValues[63] = 23.2870662124804;
		regressionValues[64] = 23.0725975462912;
		regressionValues[65] = 22.8614541099669;
		regressionValues[66] = 22.6535343637614;
		regressionValues[67] = 22.4487413490225;
		regressionValues[68] = 22.2469824166942;
		regressionValues[69] = 22.0481689756381;
		regressionValues[70] = 21.8522162590632;
		regressionValues[71] = 21.6590431075237;
		regressionValues[72] = 21.4685717670919;
		regressionValues[73] = 21.2807277014523;
		regressionValues[74] = 21.0954394167798;
		regressionValues[75] = 20.9126382983719;
		regressionValues[76] = 20.7322584581005;
		regressionValues[77] = 20.5542365918362;
		regressionValues[78] = 20.3785118460704;
		regressionValues[79] = 20.2050256930348;
		regressionValues[80] = 20.0337218136748;
		regressionValues[81] = 19.8645459878925;
		regressionValues[82] = 19.6974459915242;
		regressionValues[83] = 19.5323714995611;
		regressionValues[84] = 19.3692739951667;
		regressionValues[85] = 19.2081066840778;
		regressionValues[86] = 19.048824414011;
		regressionValues[87] = 18.8913835987295;
		regressionValues[88] = 18.7357421464477;
		regressionValues[89] = 18.5818593922821;
		regressionValues[90] = 18.4296960344754;
		regressionValues[91] = 18.2792140741452;
		regressionValues[92] = 18.1303767583244;
		regressionValues[93] = 17.9831485260813;
		regressionValues[94] = 17.8374949575207;
		regressionValues[95] = 17.6933827254841;
		regressionValues[96] = 17.5507795497783;
		regressionValues[97] = 17.4096541537759;
		regressionValues[98] = 17.2699762232416;
		regressionValues[99] = 17.1317163672484;
		regressionValues[100] = 16.9948460810583;
		regressionValues[101] = 16.8593377108495;
		regressionValues[102] = 16.7251644201813;
		regressionValues[103] = 16.5923001580952;
		regressionValues[104] = 16.4607196287568;
		regressionValues[105] = 16.3303982625503;
		regressionValues[106] = 16.2013121885432;
		regressionValues[107] = 16.0734382082438;
		regressionValues[108] = 15.9467537705789;
		regressionValues[109] = 15.8212369480255;
		regressionValues[110] = 15.6968664138312;
		regressionValues[111] = 15.5736214202669;
		regressionValues[112] = 15.4514817778531;
		regressionValues[113] = 15.3304278355111;
		regressionValues[114] = 15.2104404615876;
		regressionValues[115] = 15.0915010257079;
		regressionValues[116] = 14.9735913814159;
		regressionValues[117] = 14.8566938495574;
		regressionValues[118] = 14.7407912023721;
		regressionValues[119] = 14.6258666482561;
		regressionValues[120] = 14.5119038171618;
		regressionValues[121] = 14.3988867466042;
		regressionValues[122] = 14.2867998682428;
		regressionValues[123] = 14.1756279950112;
		regressionValues[124] = 14.0653563087676;
		regressionValues[125] = 13.9559703484418;
		regressionValues[126] = 13.8474559986538;
		regressionValues[127] = 13.7397994787828;
		regressionValues[128] = 13.6329873324646;
		regressionValues[129] = 13.5270064174981;
		regressionValues[130] = 13.4218438961403;
		regressionValues[131] = 13.317487225775;
		regressionValues[132] = 13.2139241499348;
		regressionValues[133] = 13.1111426896624;
		regressionValues[134] = 13.0091311351959;
		regressionValues[135] = 12.9078780379624;
		regressionValues[136] = 12.8073722028676;
		regressionValues[137] = 12.7076026808678;
		regressionValues[138] = 12.6085587618115;
		regressionValues[139] = 12.5102299675403;
		regressionValues[140] = 12.4126060452366;
		regressionValues[141] = 12.3156769610077;
		regressionValues[142] = 12.2194328936971;
		regressionValues[143] = 12.1238642289133;
		regressionValues[144] = 12.0289615532653;
		regressionValues[145] = 11.9347156487994;
		regressionValues[146] = 11.8411174876257;
		regressionValues[147] = 11.7481582267286;
		regressionValues[148] = 11.6558292029533;
		regressionValues[149] = 11.5641219281608;
		regressionValues[150] = 11.4730280845453;
		regressionValues[151] = 11.382539520107;
		regressionValues[152] = 11.2926482442739;
		regressionValues[153] = 11.2033464236683;
		regressionValues[154] = 11.1146263780096;
		regressionValues[155] = 11.0264805761512;
		regressionValues[156] = 10.9389016322438;
		regressionValues[157] = 10.851882302022;
		regressionValues[158] = 10.7654154792082;
		regressionValues[159] = 10.6794941920302;
		regressionValues[160] = 10.5941115998482;
		regressionValues[161] = 10.5092609898863;
		regressionValues[162] = 10.4249357740659;
		regressionValues[163] = 10.3411294859361;
		regressionValues[164] = 10.2578357776976;
		regressionValues[165] = 10.1750484173183;
		regressionValues[166] = 10.0927612857345;
		regressionValues[167] = 10.0109683741375;
		regressionValues[168] = 9.92966378134013;
		regressionValues[169] = 9.84884171122229;
		regressionValues[170] = 9.76849647025116;
		regressionValues[171] = 9.68862246507459;
		regressionValues[172] = 9.60921420018443;
		regressionValues[173] = 9.53026627564766;
		regressionValues[174] = 9.45177338490293;
		regressionValues[175] = 9.37373031262013;
		regressionValues[176] = 9.29613193262113;
		regressionValues[177] = 9.21897320585918;
		regressionValues[178] = 9.14224917845547;
		regressionValues[179] = 9.06595497979052;
		regressionValues[180] = 8.99008582064881;
		regressionValues[181] = 8.9146369914148;
		regressionValues[182] = 8.83960386031863;
		regressionValues[183] = 8.76498187172987;
		regressionValues[184] = 8.69076654449783;
		regressionValues[185] = 8.61695347033677;
		regressionValues[186] = 8.54353831225466;
		regressionValues[187] = 8.47051680302413;
		regressionValues[188] = 8.39788474369405;
		regressionValues[189] = 8.32563800214078;
		regressionValues[190] = 8.25377251165746;
		regressionValues[191] = 8.18228426958047;
		regressionValues[192] = 8.11116933595167;
		regressionValues[193] = 8.04042383221543;
		regressionValues[194] = 7.97004393994929;
		regressionValues[195] = 7.90002589962729;
		regressionValues[196] = 7.83036600941497;
		regressionValues[197] = 7.76106062399482;
		regressionValues[198] = 7.69210615342178;
		regressionValues[199] = 7.62349906200734;
		regressionValues[200] = 7.55523586723168;
		regressionValues[201] = 7.48731313868295;
		regressionValues[202] = 7.41972749702285;
		regressionValues[203] = 7.35247561297777;
		regressionValues[204] = 7.28555420635467;
		regressionValues[205] = 7.21896004508112;
		regressionValues[206] = 7.15268994426859;
		regressionValues[207] = 7.08674076529849;
		regressionValues[208] = 7.02110941493017;
		regressionValues[209] = 6.95579284443043;
		regressionValues[210] = 6.89078804872365;
		regressionValues[211] = 6.82609206556223;
		regressionValues[212] = 6.76170197471657;
		regressionValues[213] = 6.69761489718416;
		regressionValues[214] = 6.63382799441715;
		regressionValues[215] = 6.57033846756795;
		regressionValues[216] = 6.50714355675231;
		regressionValues[217] = 6.4442405403295;
		regressionValues[218] = 6.38162673419889;
		regressionValues[219] = 6.31929949111273;
		regressionValues[220] = 6.25725620000464;
		regressionValues[221] = 6.19549428533317;
		regressionValues[222] = 6.13401120644028;
		regressionValues[223] = 6.07280445692423;
		regressionValues[224] = 6.01187156402651;
		regressionValues[225] = 5.95121008803233;
		regressionValues[226] = 5.89081762168453;
		regressionValues[227] = 5.83069178961039;
		regressionValues[228] = 5.77083024776096;
		regressionValues[229] = 5.71123068286276;
		regressionValues[230] = 5.65189081188135;
		regressionValues[231] = 5.59280838149662;
		regressionValues[232] = 5.53398116758931;
		regressionValues[233] = 5.47540697473868;
		regressionValues[234] = 5.41708363573081;
		regressionValues[235] = 5.35900901107757;
		regressionValues[236] = 5.30118098854555;
		regressionValues[237] = 5.2435974826952;
		regressionValues[238] = 5.1862564344295;
		regressionValues[239] = 5.1291558105522;
		regressionValues[240] = 5.07229360333519;
		regressionValues[241] = 5.01566783009492;
		regressionValues[242] = 4.9592765327776;
		regressionValues[243] = 4.90311777755297;
		regressionValues[244] = 4.84718965441624;
		regressionValues[245] = 4.79149027679848;
		regressionValues[246] = 4.73601778118464;
		regressionValues[247] = 4.68077032673946;
		regressionValues[248] = 4.62574609494104;
		regressionValues[249] = 4.57094328922152;
		regressionValues[250] = 4.5163601346152;
		regressionValues[251] = 4.46199487741355;
		regressionValues[252] = 4.40784578482715;
		regressionValues[253] = 4.35391114465431;
		regressionValues[254] = 4.30018926495616;
		regressionValues[255] = 4.24667847373819;

		double[] round = new double[18];
		
		round[1] = 46.357143;			
		round[2] = 28.531481;		
		round[3] = 18.572165;			
		round[4] = 14.588333;			
		round[5] = 9.946218;			
		round[6] = 7.708978;			
		round[7] = 6.597403;	
		
		System.out.println("This is a NFL Pick trade Analyzer that will analyze \n"
				+ "and grade any trade. To work the trade analyzer insert the \n"
				+ "picks traded by team A and then the picks traded by team B. \n"
				+ "The code will then put out a grade for each team based on the \n"
				+ "picks traded.");
		
		System.out.println("How many picks is Team A receiving? (Enter all picks)");
		String teamApicksNString = input.next();
		int teamApicksN = Integer.parseInt(teamApicksNString);
		
		int[] teamAPicks = new int[20];
		
		System.out.println("Enter each pick one at a time below for the picks team A is receiving.\n");
		for(int i = 1; i <= teamApicksN; i++) {
			System.out.println("What is the pick " + i + " for team A in the trade?");
			String pickString = input.next();
			int pick = Integer.parseInt(pickString);
			teamAPicks[i] = pick;
		}
		
		
		System.out.println("How many picks is Team B receiving?");
		String teamBpicksNString = input.next();
		int teamBpicksN = Integer.parseInt(teamBpicksNString);
		
		int[] teamBPicks = new int[20];
		
		System.out.println("Enter each pick one at a time below for the picks team B is receiving.\n");
		for(int i = 1; i <= teamBpicksN; i++) {
			System.out.println("What is the pick " + i + " for team B in the trade?");
			String pickString = input.next();
			int pick = Integer.parseInt(pickString);
			teamBPicks[i] = pick;
		}
		
		/*
		System.out.println("Is team A receiving any players in the trade? "
				+ "(Answer Y for Yes or N for No)");
		String playersA = input.next();
		
		String[] teamAPlayers = null;
		int teamAPlayersCount = 0;
		if(playersA.equals("Y")) {
			System.out.println("How many players is Team A receiving?");
			String teamAplayersNString = input.next();
			int teamAplayersN = Integer.parseInt(teamAplayersNString);
			
			teamAPlayers = new String[20];
			
			System.out.println("Enter each player one at a time below for the players team A is receiving.\n");
			for(int i = 1; i <= teamAplayersN; i++) {
				System.out.println("What is the player " + i + " for team A in the trade?\n");
				
				String playerString = input.next();
				//String playerString2
				teamAPlayers[i] = playerString;
				teamAPlayersCount++;
			}
		} 
		
		System.out.println("Is team B receiving any players in the trade? "
				+ "(Answer Y for Yes or N for No)");
		String playersB = input.next();
		
		String[] teamBPlayers = null;
		int teamBPlayersCount = 0;
		if(playersB.equals("Y")) {
			System.out.println("How many players is Team B receiving?");
			String teamBplayersNString = input.next();
			int teamBplayersN = Integer.parseInt(teamBplayersNString);
			
			teamBPlayers = new String[20];
			
			System.out.println("Enter each player one at a time below for the players team B is receiving.");
			for(int i = 1; i <= teamBplayersN; i++) {
				System.out.println("What is the player " + i + " for team B in the trade?\n");
				String playerString = input.nextLine();
				teamBPlayers[i] = playerString;
				teamBPlayersCount++;
			}
		}
		*/
		
		System.out.println("Trade Report:\n\n"
				+ "Team A receives:\n");
		double totalAwAV = 0;
		for(int i = 1; i <= teamApicksN; i++) {
			System.out.println(teamAPicks[i]);
			totalAwAV += regressionValues[teamAPicks[i]];
		}
		/*
		for(int i = 1; i <= teamAPlayersCount; i++) {
			System.out.println(teamAPlayers[i]);
		}
		*/
		System.out.println();
		System.out.println("Total wAV for Team A: " + totalAwAV);
		
		System.out.println("Team B receives:\n");
		double totalBwAV = 0;
		for(int i = 1; i <= teamBpicksN; i++) {
			System.out.println(teamBPicks[i]);
			totalBwAV += regressionValues[teamBPicks[i]];
		}
		/*
		for(int i = 1; i <= teamBPlayersCount; i++) {
			System.out.println(teamBPlayers[i]);
		}
		*/
		System.out.println();
		System.out.println("Total wAV for Team B: " + totalBwAV);
	}

}









