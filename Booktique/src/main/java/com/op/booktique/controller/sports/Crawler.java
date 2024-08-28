package com.op.booktique.controller.sports;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.op.booktique.vo.sports.GameVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Crawler {
   private WebDriver driver;
   private WebElement element;
   private String url;

   // 드라이버 설치 경로
   public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
   public static String WEB_DRIVER_PATH = "C:/Users/PC-31/chromedriver-win64/chromedriver.exe"; // 크롬드라이버 위치
   
   public Crawler() {
      
      // WebDriver 경로 설정
      System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);

      // WebDriver 옵션 설정
      ChromeOptions options = new ChromeOptions();
      options.addArguments("--start-maximized");
      options.addArguments("--disable-popup-blocking");
      driver = new ChromeDriver(options);

      // 크롤링 할 페이지 경로
      url = "https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07001&TeamCode=PB004"; 
//      url = "https://ticket.interpark.com/Contents/Sports"; // 크롤링 할 페이지 경로

   }

   public void activateBot() {
      log.debug("크롤링 activateBot 실행");

      List<GameVO> gameList = new ArrayList<GameVO>();

      try {
         driver.get(url);
         Thread.sleep(3000); // 페이지 로딩 대기 시간

         JavascriptExecutor js = (JavascriptExecutor) driver;
//         js.executeScript("document.body.style.zoom='33%'"); // 화면비율 줄임
         Thread.sleep(1000);
         
         // 4. 전체 탭 클릭
         element = driver.findElement(By.xpath("/html/body/div[2]/div[1]/div/div[3]"));
//         System.out.println("크롤링  값: " + element.getText());
         js.executeScript("arguments[0].click();", element);
         Thread.sleep(1000);
         
//         element = driver.findElement(By.xpath("/html/body/div[3]/div[2]"));
         
         WebElement pageElement;
         WebElement around;
         WebElement homeTeam;
         WebElement awayTeam;
         WebElement stadiumID;
         WebElement gameDate;
         WebElement gameStartTime;
         WebElement team1;
         WebElement team2;
         while (true) {
            long lastHeight = (long) js.executeScript("return document.body.scrollHeight");
            List<WebElement> games = element.findElements(By.tagName("a"));
            
            for (WebElement game : games) {
               GameVO gameVO = new GameVO();
               around = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]"));
               homeTeam = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]/div[1]/div[3]/div[1]/a[2]"));
               awayTeam = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]/div[1]/div[3]/div[2]/a[2]"));
               stadiumID = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]/div[1]/div[4]/div/span"));
               gameDate = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]/div[1]/div[1]"));
               gameStartTime = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]/div[1]/div[2]"));
               team1 = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]/div[1]/div[3]/div[1]/a[1]/img"));
               team2 = game.findElement(By.xpath("/html/body/div[2]/div[4]/div[4]/div[1]/div[3]/div[2]/a[1]/img"));
               String imgSrc1 = team1.getAttribute("src");
               String imgSrc2 = team2.getAttribute("src");
               gameVO.setTeamId(homeTeam.getText());
               gameVO.setTeamId(awayTeam.getText());
               gameVO.setStadiumId(stadiumID.getText());
               gameVO.setGameDt(gameDate.getText());
               gameVO.setGameStartTm(gameDate.getText());
//               gameVO.getTeamVOList().setTeamLogoImg(imgSrc);
               
               if(gameList.contains(gameVO)) {
                  System.out.println("중복!"+gameVO);
               }else {
                  System.out.println("안중복!");
                  gameList.add(gameVO);
               }
            }
            
            pageElement = driver.findElement(By.xpath("/html/body"));
            pageElement.sendKeys(Keys.END);
            Thread.sleep(5000);   // 중간에 조금 슬립 걸기
            
            long newHeight = (long) js.executeScript("return document.body.scrollHeight");
            
            if(newHeight == lastHeight) break;
         }
         
         

      }catch (Exception e) {
         e.printStackTrace();
      } finally {
         driver.quit();   // 브라우저 종료
      }
      
      String fileName = "sportsmain.csv";
      try (BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileName), "UTF-8"))) {
          for (int i=0; i<gameList.size(); i++) {
              writer.write((i+1)+";");
              writer.write(gameList.get(i).getTeamId()+";");
              writer.write(gameList.get(i).getStadiumId()+";");
              writer.write(gameList.get(i).getGameDt()+";");
              writer.write(gameList.get(i).getGameStartTm()+";");
//              writer.write(gameList.get(i).getTeamVOList().getTeamLogoImg()+";");
              writer.newLine();
          }
          String currentDir = System.getProperty("user.dir");
          System.out.println("파일 저장 디렉토리: " + currentDir);
          System.out.println("파일에 데이터를 성공적으로 저장했습니다.");
      } catch (IOException e) {
          e.printStackTrace();
      }
   }
   
   public static void main(String[] args) {
      Crawler bot1 = new Crawler();
      bot1.activateBot();
   }
}
