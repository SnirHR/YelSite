<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YelSite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="PageTitle">Who are we?</h1>
            <p class="lead">Hi, I am Yonatan, and I founded BridgeWise, an organization dedicated to empowering and supporting young individuals to realize their full potential in the bridge game. It aims to provide guidance, mentorship, and educational opportunities to help youth navigate their professional journeys in this amazing game.</p>
            <p class="d-flex justify-content-center"><a id="read-more-button" href="#read-more" class="btn btn-primary">Read more</a></p>
            <img src="./Images/Yonatan.jpeg"/>
        </section>

        <div class="row d-flex justify-content-center">
            <section>
                <h2 class="fw-bold d-flex justify-content-center" id="read-more">Our Initiatives:</h2>
                <p>
                    <i class="fw-bold d-flex justify-content-center" >Bridge Mentorship Program:</i>
                    <br />
                    We believe in the power of mentorship. Our mentorship program pairs seasoned Bridge players with young enthusiasts. The mentors provide valuable insights, share strategies, and help mentees understand the nuances of the game.
                </p>
            <p>
                    <i class="fw-bold d-flex justify-content-center">Bridge Workshops:</i>
                    <br />
                    We organize regular workshops to provide hands-on experience and in-depth understanding of Bridge. These workshops cover various aspects of the game, including bidding strategies, defensive techniques, and declarer play tactics.
            
                </p>
                <p >
                    <i class="fw-bold d-flex justify-content-center">Educational Resources:</i>
                    <br />
                    We offer a wide range of educational resources for young Bridge players. From tutorials, eBooks, articles, to videos – we have a plethora of content to assist learners at different stages of their Bridge journey.
            
                </p>
                <P>
                    <i class="fw-bold d-flex justify-content-center">Bridge Competitions:</i>
                    <br />
                    We organize regular Bridge competitions to provide a platform for young players to test their skills, learn from their peers, and gain exposure to competitive Bridge playing. These competitions not only boost their confidence but also inspire them to constantly improve.
            
                </P>
                <p>
                    <i class="fw-bold d-flex justify-content-center">Community Building:</i>
                    <br />
                    We focus on creating a community of young Bridge players where they can engage in discussions, share their experiences, learn from each other, and foster a sense of camaraderie. We believe that playing Bridge is more enjoyable and rewarding in a supportive community environment.
                </p>
            </section>
            <img src="./Images/Logo.png" style="width:auto; height:auto;/>
        </div>
    </main>

</asp:Content>
