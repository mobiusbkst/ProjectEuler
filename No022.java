/**
 * 問題： http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2022
 * https://projecteuler.net/problem=22
 * 考え方：RubyだとうまくいかなかったのでJavaで解く
 * ・読み込んだのちにソート
 * ・名前それぞれについてスコアを計算。char型の文字から'@'を引くと文字のスコアが
 * 求められるのでそれを足し合わせて最後にリストの順番をかける。
 */
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;

public class No022 {
    public static void main(String[] args) {
        try {
            File file = new File("c:\\temp\\names.txt");
            FileReader filereader = new FileReader(file);
            BufferedReader br = new BufferedReader(filereader);
            String[] S = br.readLine().replaceAll("\"", "").split(",");
            Arrays.sort(S);
            int ans = 0;
            for (int i = 0; i < S.length; i++) {
                char[] c = S[i].toCharArray();
                int score = 0;
                for (char d : c) {
                    score += d - '@';
                }
                ans += score * (i + 1);
            }

            System.out.println(ans);
            br.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            System.err.println("Error:" + e.getMessage());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}