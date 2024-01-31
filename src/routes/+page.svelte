<script>
  import NavArea from '../lib/components/nav/NavArea.svelte';
  import Section from '$lib/components/Section.svelte';
  import Landing from '$lib/components/Landing.svelte';
  import ScrollButton from '$lib/components/nav/ScrollButton.svelte';
  import Portrait from '../lib/components/Portrait.svelte';
  import Project from '$lib/components/Project.svelte';

  import Card from '$lib/components/cards/Card.svelte';
  import ImageCard from '$lib/components/cards/ImageCard.svelte';

  let xs, sm, md, lg, xl;
  let width = 0;
  $: xs = width  <   576;
  $: sm = width  >=  576 && width <  768;
  $: md = width  >=  768 && width <  992;
  $: lg = width  >=  992 && width < 1200;
  $: xl = width  >= 1200 && width < 1400;
  $: xxl = width >= 1400;

  import portfolio from '$lib/images/projects/portfolio.png';
  import tides from '$lib/images/projects/tides.png';
  import mlagents from '$lib/images/projects/mlagents.png';

  import src_2012 from '$lib/images/journey/2012.jpg';
  import src_2014 from '$lib/images/journey/2014.jpg';
  import src_2017 from '$lib/images/journey/2017.jpg';
  import src_2018 from '$lib/images/journey/2018.jpg';
  import src_2020 from '$lib/images/journey/2020.jpg';
  import src_2021 from '$lib/images/journey/2021.jpg';
  import src_2023 from '$lib/images/journey/2023.jpg';
</script>

<style>
  h1 {
    font-size: 3rem;
  }

  .name {
    font-size: 4rem;
    color: var(--bs-success);
  }
</style>

<svelte:window bind:innerWidth={width} />

<Landing>
  <div slot="lead">
    <h1>Hi,<br /><span class="name">I'm Owen</span></h1>
    <p class="lead">
      I'm a software engineer. I enable success by using my technical expertise to produce reliable, scalable, and secure cloud solutions.
    </p>
    <a href="Owen Adrian - Resume.pdf" class="btn btn-lg btn-success">Résumé</a>
    <a href="https://linkedin.com/in/owen-adrian" class="btn btn-lg btn-success" aria-label="LinkedIn"><i class="fab fa-linkedin" /></a>
    <a href="https://github.com/Akrivus" class="btn btn-lg btn-success" aria-label="GitHub"><i class="fab fa-github" /></a>
    <ScrollButton />
  </div>
  <div class="col" slot="side">
    <Portrait />
  </div>
</Landing>

<NavArea>
  <Section id="whoami" title="Who Am I?">
    <div class="row">
      <Card sizes={["12", "md-8"]}>
        <h5 slot="header" class="card-title">I'm Owen.</h5>
        <p  slot="content" class="card-text">
          I observe the world around me and think about ways to improve it. I envision
          solutions and implement them using my programming prowess and technical expertise.
          For {new Date().getFullYear() - 2017} years, I've driven growth and productivity
          for organizations by developing software that is reliable, scalable, and secure.
        </p>
      </Card>
      <Card sizes={["12", "sm-6", "md-4"]}>
        <h5 slot="header" class="card-title">I solve problems.</h5>
        <p  slot="content" class="card-text">
          I immerse myself in the problem space to understand the challenges, which I plan and execute on by
          leveraging my skills and the talent of my team.
        </p>
      </Card>
      <Card sizes={["12", "sm-6", "md-4"]}>
        <h5 slot="header" class="card-title">I'm talented.</h5>
        <p  slot="content" class="card-text">
          I've been programming since I was 12, and my journey from start-up to global enterprise has given me a
          sense of what works and what doesn't.
        </p>
      </Card>
      <Card sizes={["12", "sm-6", "md-4"]}>
        <h5 slot="header" class="card-title">I'm adaptive.</h5>
        <p  slot="content" class="card-text">
          I work best when I'm closest to the challenge, where I can readily adjust my perspective and formulate
          the most decisive solutions.
        </p>
      </Card>
      <Card sizes={["12", "sm-6", "md-4"]}>
        <h5 slot="header" class="card-title">I'm a team player.</h5>
        <p  slot="content" class="card-text">
          I look for opportunities to accomplish more by working with others, whether it's during caffeinated nights
          at the office or at home over a video call.
        </p>
      </Card>
      <Card sizes={["12", "sm-6", "md-4"]}>
        <h5 slot="header" class="card-title">I'm an engineer.</h5>
        <p  slot="content" class="card-text">
          I'm proficient in Ruby, JavaScript, C#, but nothing is beyond my reach, I've worked on
          codebases and frameworks in C++, Python and Java.
        </p>
      </Card>
      <Card sizes={["12", "sm-6", "md-4"]}>
        <h5 slot="header" class="card-title">I'm a full stack developer.</h5>
        <p  slot="content" class="card-text">
          I'm experienced with Ruby on Rails, ASP.NET Core, React, and Svelte, and I've deployed my solutions
          on Azure AKS and App Service, ECS, and Heroku.
        </p>
      </Card>
      <Card sizes={["12", "sm-6", "md-4"]}>
        <h5 slot="header" class="card-title">I'm an entrepreneur.</h5>
        <p  slot="content" class="card-text">
          I took control of my destiny in 2017 by starting my own business, and learned the direct impact of my
          decisions and the value of my work.
        </p>
      </Card>
    </div>
  </Section>

  <Section id="myskills" title="My Skills">
    <div class="row">
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Software Development</h5>
        <div slot="content" class="card-text">
          I develop software solutions that are reliable, scalable, and secure.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Full-Stack Development</h5>
        <div slot="content" class="card-text">
          I build full-stack applications that enable organizations to succeed.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Web Development</h5>
        <div slot="content" class="card-text">
          I write HTML, CSS, JavaScript, and develop with various frameworks.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Cloud Infrastructure</h5>
        <div slot="content" class="card-text">
          I deploy and maintain services on Azure, Heroku, and Digital Ocean.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Cloud Services</h5>
        <div slot="content" class="card-text">
          Docker, Kubernetes, Nginx, Azure AKS, Azure App Service, AWS ECS
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">DevOps</h5>
        <div slot="content" class="card-text">
          CI/CD, GitHub Actions, Azure Pipelines, CircleCI, Travis CI
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Database Management</h5>
        <div slot="content" class="card-text">
          PostgreSQL, SQLite, MongoDB, Redis
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Integrating Security</h5>
        <div slot="content" class="card-text">
          MFA, SSO, RBAC, along with OWASP, GDPR, NIST and PCI standards
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Ruby</h5>
        <div slot="content" class="card-text">
          Ruby on Rails, Sinatra, RSpec, Capybara, DelayedJob, Resque
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">C#/.NET</h5>
        <div slot="content" class="card-text">
          ASP.NET Core, Entity Framework, NUnit, Moq, Unity, WinForms
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">JavaScript</h5>
        <div slot="content" class="card-text">
          React, Svelte, Vite, Vue, jQuery, Node.js, Express
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Artificial Intelligence</h5>
        <div slot="content" class="card-text">
          I leverage ChatGPT and OpenAI to maximize my productivity.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Team Collaboration</h5>
        <div slot="content" class="card-text">
          I can collaborate with cross-functional teams to achieve goals.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Technical Writing</h5>
        <div slot="content" class="card-text">
          I use my writing skills to document my work and share my knowledge.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Project Management</h5>
        <div slot="content" class="card-text">
          I can plan, execute, and deliver projects on time and on budget.
        </div>
      </Card>
      <Card sizes={["6", "sm-4", "lg-3"]}>
        <h5 slot="header" class="card-title">Continuous Learning</h5>
        <div slot="content" class="card-text">
          I adapt to new challenges by learning new skills and technologies.
        </div>
      </Card>
    </div>
  </Section>
  
  <Section id="myjourney" title="My Journey">
    <div class="row">
      <ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} src={src_2012} alt="Eclipse Origins, an open source game written in Visual Basic.">
        <div slot="header">
          <h5 class="card-title">Eclipse Origins</h5>
          <h6 class="card-title text-muted">2011 - 2014</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            As a 12-year-old kid on the internet, I discovered TouchOfDeath,
            an online community dedicated to developing MMORPG games in Visual
            Basic 6 using Eclipse Origins. Through diligent self-learning and
            experimentation, I implemented an authentication system, addressed
            security issues, and created a feature enabling players to heckle
            NPC merchants in an orient-inspired video game.
          </p>
          <ul>
            <li>Acquired proficiency in programming through self-study.</li>
            <li>Implemented a secure authentication system for 160 players.</li>
            <li>Created a chat moderation bot using sentiment analysis.</li>
          </ul>
        </div>
      </ImageCard>
      <ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} src={src_2014} alt="KAGIC, a Steven Universe Minecraft mod.">
        <div slot="header">
          <h5 class="card-title">KAGIC</h5>
          <h6 class="card-title text-muted">2014 - 2016</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            I gained online recognition for building popular Minecraft mods
            such as KAGIC, which introduced holographic guardians called Gems;
            Mob Mash, featuring a dozen new enemies; and CoffeeCraft, focused
            on coffee cultivation and trade. The most popular project, KAGIC, I
            implemented core features like Gem creation and commands using an
            NLP model for chat interaction, resulting in over 300,000 downloads,
            a 13,000-strong community, and widespread visibility through
            various YouTube Let's Plays and series.
          </p>
          <ul>
            <li>Achieved over 300,000 downloads, 13,000 players.</li>
            <li>Accumulated a total of 6,500,000 views on YouTube.</li>
            <li>Companion mods amassed over 700,000 downloads.</li>
          </ul>
        </div>
      </ImageCard>
      <ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} src={src_2017} alt="Hacker's Holiday, a three-person development team.">
        <div slot="header">
          <h5 class="card-title">Hacker's Holiday</h5>
          <h6 class="card-title text-muted">2016 - 2017</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            I conceived the idea of Hacker's Holiday, a seasonal hackathon
            where my talented friend group and myself would tackle local
            community challenges. Through late-night brainstorming sessions
            fueled by caffeine, we developed solutions such as Downtown Connect,
            an event app for Historic Downtown Liberty, an online ordering
            system for a local coffee shop that evolved into Order Coffee
            Online, and an IoT solution for sales forecasting and user
            preference prediction.
          </p>
          <ul>
            <li>Awarded Liberty Chamber of Commerce 20under20 award.</li>
            <li>Developed MVP that would go on to raise over $1,000,000.</li>
            <li>Designed an IoT solution that increase conversion by 40%.</li>
          </ul>
        </div>
      </ImageCard>
      <ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} src={src_2018} alt="Maruchan Instant Lunch over Trello">
        <div slot="header">
          <h5 class="card-title">Order Coffee Online</h5>
          <h6 class="card-title text-muted">2017 - 2020</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            After successfully commercializing Order Coffee Online, I rewrote
            the platform in Ruby on Rails, expanding its capabilities to support
            multiple locations, a mobile app, and a menu editor. I managed
            development, deployment, and maintenance, hosting the app on Digital
            Ocean and integrating Stripe for payments and Twilio for SMS
            notifications. The platform processed over $1,000,000 in orders,
            served 3,000 customers, and earned me recognition from the Liberty
            Chamber of Commerce 20under20 award, culminating in its sale to
            a local business owner amid the COVID-19 pandemic.
          </p>
          <ul>
            <li>Awarded Liberty Chamber of Commerce 20under20 award.</li>
            <li>Processed over $1,000,000 in sales, over 3,000 customers.</li>
            <li>Orchestrated a successful exit in 2020.</li>
          </ul>
        </div>
      </ImageCard>
      <ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} src={src_2020} alt="VisualLive">
        <div slot="header">
          <h5 class="card-title">VisualLive</h5>
          <h6 class="card-title text-muted">2020 - 2021</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            Joining VisualLive in 2020, I advanced the company's cloud
            infrastructure and web application, facilitating its expansion
            and efficiency amid rapid growth. Key initiatives included
            migrating the company's cloud infrastructure from Heroku to Azure,
            enhancing security and reliability, and releasing features like a
            chart generator and user management system. These contributions
            propelled VisualLive to become a global leader in augmented reality
            for AEC, leading to a lucrative acquisition by Unity Technologies.
          </p>
          <ul>
            <li>Enabled efficient workflows with CRM integration.</li>
            <li>Migrated cloud infrastructure from Heroku to Azure.</li>
            <li>Maintained regulatory compliance and GDPR.</li>
            <li>Powered a global leader in the AEC space.</li>
          </ul>
        </div>
      </ImageCard>
      <ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} src={src_2021} alt="Unity Technologies">
        <div slot="header">
          <h5 class="card-title">Unity Technologies</h5>
          <h6 class="card-title text-muted">2021 - 2023</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            While integrating VisualLive with Unity's Industrial Collection, I
            spearheaded various initiatives leveraging my cloud development
            expertise, including tracking and analytics APIs, optimizing 3D
            model streaming, implementing a new licensing system, and
            integrating third-party APIs for enhanced project management. I
            also repackaged VisualLive into an on-premise suite, saving hosting
            costs and improving performance. Additionally, I contributed to
            internal tools, participated in hackathons, and utilized ML/AI
            technologies like ChatGPT.
          </p>
          <ul>
            <li>Increased market share with by integrating VisualLive into UIC.</li>
            <li>Slashed hosting costs by 50% with a new scaling strategy.</li>
            <li>Improved performance by 40% with a new 3D model converter.</li>
          </ul>
        </div>
      </ImageCard>
      <ImageCard sizes={["12"]} top={xs || sm || md} side={xxl} src={src_2023} alt="Owen passes a parting look into the distance">
        <div slot="header">
          <h5 class="card-title">The Journey Continues</h5>
          <h6 class="card-title text-muted">2023 - Present</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            Following Unity's restructuring in 2023, I embraced the market
            downturn as an opportunity for reflection and exploration. While
            job-hunting, I continue to develop my portfolio website with new
            ideas, and use GPT and simulated environments in Unity to create
            immersive narratives. I'm focused on seeking new opportunities
            aligned with my skills and interests, upskilling, sharing my
            journey, and fostering a supportive community of talented
            individuals, aiming to inspire others and build great things.
          </p>
          <ul>
            <li>Seeking new opportunities to exercise skills and gain new ones.</li>
            <li>Using GPT to craft immersive narratives from simulated environments.</li>
            <li>Developing a portfolio website to showcase my skills.</li>
          </ul>
        </div>
      </ImageCard>
    </div>
  </Section>
  
  <Section id="myprojects" title="My Projects">
    <div class="row row-cols-1 row-cols-lg-3">
      <Project icon="cloud" image="{portfolio}"
        title="My Portfolio"
        description="In 2024, I developed a new portfolio website to showcase my
        skills and experience using SvelteKit, a new way to develop single page
        web front-ends in JavaScript."
        action="View Source Code"
        actionHref="https://github.com/Akrivus/Akrivus"
        />
      <Project icon="brain" image="{mlagents}"
        title="ML Agents"
        description="Using Unity's ML Agents, I'm developing a torque-driven
        active ragdoll that responds to an LLM by replicating different poses and movements
        for AI storytelling and filmmaking."
        />
      <Project icon="gamepad" image="{tides}"
        title="AI Storytelling"
        description="I'm developing a procedurally generated island with simulated erosion,
        ecosystems, civilizations that can be explored by an AI storyteller with GPT-4."
        />
    </div>
  </Section>
</NavArea>