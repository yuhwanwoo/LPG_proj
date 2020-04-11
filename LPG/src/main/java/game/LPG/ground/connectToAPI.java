package game.LPG.ground;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class connectToAPI {
	public String getJson(String search, int page){
		BufferedReader br =null;
		String result = "";
		try {
			String key = "73597a4a6b716b7232364c47544b4d";
			String urlstr = "http://openapi.seoul.go.kr:8088/"+key+"/json/ListPublicReservationSport/1/"+page+"/"+search;
			System.out.println(urlstr);
			URL url;
			url = new URL(urlstr);
			HttpURLConnection urlCon = (HttpURLConnection) url.openConnection();
			br = new BufferedReader(new InputStreamReader(urlCon.getInputStream(),"UTF-8"));
			String line;
			while((line = br.readLine()) != null){
				result = result + line + "\n";
			}
			System.out.println(result);
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return result;
	}
}
