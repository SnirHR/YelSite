<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YelSite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="PageTitle">Who are we?</h1>
            <p class="lead">YEL(Youth Empowerment League) is an organization dedicated to empowering and supporting young individuals to realize their full potential. It aims to provide guidance, mentorship, and educational opportunities to help youth navigate their personal and professional journeys.</p>
            <p class="d-flex justify-content-center"><a id="read-more-button" href="#read-more" class="btn btn-primary">Read more</a></p>
            <img src="./Images/YEL.png" />
        </section>

        <div class="row d-flex justify-content-center">
            <section>
                <h2 class="fw-bold d-flex justify-content-center" id="read-more">Features:</h2>
                <p>
                    <i class="fw-bold d-flex justify-content-center" >Mentorship Program:</i>
                    <br />
                    The organization facilitates a mentorship program connecting experienced adults with young mentees.
                    Mentors provide guidance, advice, and support in areas such as education, career, personal growth, and decision-making.
                    Mentees have the opportunity to learn from mentors' experiences and gain valuable insights.
                    
                </p>
                <p>
                    <i class="fw-bold d-flex justify-content-center">Skill-Building Workshops:</i>
                    <br />
                    The organization organizes workshops focused on developing essential life skills and empowering youth.
                    Workshops cover various topics such as leadership, communication, goal setting, time management, and financial literacy.
                    Experts and professionals are invited to conduct interactive sessions and share practical knowledge.

                </p>
                <p >
                    <i class="fw-bold d-flex justify-content-center">Educational Resources:</i>
                    <br />
                    The platform offers a repository of educational resources, including articles, videos, and e-books, tailored to the needs and interests of young individuals.
                    Resources cover academic success, study skills, college and career planning, scholarships, and personal development.

                </p>
                <P>
                    <i class="fw-bold d-flex justify-content-center">Career Exploration:</i>
                    <br />
                    The organization provides opportunities for young individuals to explore different career paths and gain insights into various industries.
                    Career panels, guest speakers, and networking events connect youth with professionals from different fields.
                    Job shadowing or internships may be arranged to offer hands-on experience and exposure to real-world work environments.
                </P>
                <p>
                    <i class="fw-bold d-flex justify-content-center">Leadership Development:</i>
                    <br />
                    The organization focuses on developing leadership skills among young individuals.
                    Leadership training programs, seminars, and conferences are organized to enhance communication, decision-making, teamwork, and problem-solving abilities.
                    Opportunities for youth to lead and organize community service projects or youth-led initiatives are provided.
                </p>
            </section>
        </div>
    </main>

</asp:Content>
