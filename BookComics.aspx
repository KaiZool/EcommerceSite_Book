<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookComics.aspx.cs" Inherits="BookComics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <div class="page-header">
            <h2> View our Comic Books </h2>
        </div>

<div class="row comics">
  <div class="col-xs-6 col-md-3 comics">
    <a href="#" class="thumbnail">
        <img src="images/81Nm1e54HrL.jpg" alt="DC one in a million " width="200" height="300"/>
        <!-- Amazon.com. (n.d.). DC One Million 80 Page Giant (DC One Million 80 Page Giant, # 1,000,000) [Online Image]. Retrieved April 2, 2016 from: http://www.amazon.com/One-Million-Page-Giant-000/dp/B005UZ0B86 -->
   </a>
    <p> Title: DC One Million 80 Page Giant </p>
    <p> Author(s): Miller, Wieringo & Serrano </p>
    <p> ISB: B005UZ0B86 </p>
    <p> Priice: $5 </p>
  </div>

  <div class="col-xs-6 col-md-3 comics">
    <a href="#" class="thumbnail">
        <img src="images/81GMUwoP7QL.jpg" alt="Deadpool killes the marvel universe" width="200" height="300"/>
         <!-- amazon.com. (n.d.). Deadpool Kills the Marvel Universe [Online Image]. Retrieved May 11, 2016, from: http://www.amazon.com/Deadpool-Kills-Marvel-Universe-Cullen/dp/0785164030/ref=sr_1_3?s=books&ie=UTF8&qid=1463023681&sr=1-3&keywords=deadpool -->
    </a>
    <p> Title: Deadpool Kills the Marvel Universe </p>
    <p> Author: Cullen Bunn </p>
    <p> ISB: ISBN-10: 0785164030 </p>
    <p> Price: $12 </p>
  </div>
  
    <div class="col-xs-6 col-md-3 comics">
    <a href="#" class="thumbnail">
        <img src="images/Twd100cover_adlard.jpg" alt="The walking dead 100" width="200" height="300"/>
        <!-- amazon.com. (n.d.). Walking Dead #100 "Something to Fear" Cover A (Charlie Adlard) First Appearance of Negan [Online Image]. Retrieved May 10, 2016, from: http://www.amazon.com/Walking-Something-Charlie-Adlard-Appearance/dp/B007WTF4YE/ref=sr_1_1?s=books&ie=UTF8&qid=1463024458&sr=1-1&keywords=the+walking+dead+100 -->
    </a>
    <p> Title: Walking Dead #100  </p>
    <p> Author: Charlie Adlard (Illustrator) </p>
    <p> ISB: B007WTF4YE </p>
    <p> Priice: $35 </p>
  </div>

    <div class="col-xs-6 col-md-3 comics">
    <a href="#" class="thumbnail">
        <img src="images/514NT6bSFZL.jpg" alt="Deadpool The complete collection" width="200" height="300"/>
        <!-- amazon.com. (n.d.). Deadpool by Daniel Way: The Complete Collection - Volume 1 [Online Image]. Retrieved May 10, 2016, from: http://www.amazon.com/Deadpool-Daniel-Way-Complete-Collection/dp/0785185321/ref=sr_1_1?s=books&ie=UTF8&qid=1463024786&sr=1-1&keywords=deadpool -->
    </a>
    <p> Title: Deadpool The Complete Collection </p>
    <p> Author(s): Daniel Way & Andy Diggle </p>
    <p> ISBN-10: 0785185321 </p>
    <p> Price: $20</p>
  </div>

    <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
        <img src="images/51cMN2iaShL.jpg" alt="Batman The Killing Joke" width="200" height="300"/>
        <!-- amazon.com. (n.d.). Batman: The Killing Joke, Deluxe Edition [Online Image]. Retrieved May 10, 2016, from: http://www.amazon.com/Batman-Killing-Deluxe-Alan-Moore/dp/1401216676/ref=sr_1_1?s=books&ie=UTF8&qid=1463025671&sr=1-1&keywords=the+killing+joke -->
    </a>
    <p> Title: Batman: The Killing Joke </p>
    <p> Author: Moore & Bolland </p>
    <p> ISBN-10: 1401216676 </p>
    <p> Price: $11 </p>
  </div>

  <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
        <img src="images/416R9E74BXL.jpg" alt="Batman Aliens" width="200" height="300"/>
        <!-- Amazon.com. (n.d.). Batman/Aliens [Online Image]. Retrieved April 2, 2016 from: http://www.amazon.com/Batman-Aliens-Dark-Horse-Comics/dp/1569713057/ref=sr_1_1?ie=UTF8&qid=1463012812&sr=8-1&keywords=batman+alien -->
    </a>
    <p> Title: Batman/Aliens </p>
    <p> Author: Dark Horse Comics </p>
    <p> ISB: ISBN-10: 1569713057 </p>
    <p> Priice: $30</p>
  </div>

  <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
        <img src="images/91Mq3amQ8lL.jpg" alt="The flash" width="200" height="300"/>
         <!-- amazon.com. (n.d.). The Flash, Vol. 1: Move Forward (The New 52) [Online Image]. Retrieved May 10, 2016, from: http://www.amazon.com/Flash-Vol-Move-Forward-New/dp/1401235549/ref=sr_1_1?ie=UTF8&qid=1463014821&sr=8-1&keywords=the+flash+comics -->
    </a>
    <p> Title: The Flash, Vol. 1: Move Forward (The New 52) </p>
    <p> Author: Francis Manapul </p>
    <p> ISBN-10: 1401235549 </p>
    <p> Price: $20 </p>
  </div>

    <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
        <img src="images/81Yo8mdkfPL.jpg" width="200" height="300"/>
        <!-- amazon.com. (n.d.). Teen Titans, Vol. 1: It's Our Right to Fight (The New 52) [Online Image]. Retrieved May, 10, 2016, from: http://www.amazon.com/Teen-Titans-Vol-Right-Fight/dp/1401236987/ref=sr_1_2?ie=UTF8&qid=1463015092&sr=8-2&keywords=TEEN+titans+comics -->
    </a>
    <p> Title: Teen Titans, Vol. 1: It's Our Right to Fight (The New 52) </p>
    <p> Author: Scott Lobdell (Author) & Brett Booth (Illustrator) </p>
    <p> ISBN-10: 1401236987 </p>
    <p> Price: $10</p>
  </div>
</div>
</asp:Content>

