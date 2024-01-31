<script>
  import NavArea from '../lib/components/nav/NavArea.svelte';
  import Section from '$lib/components/Section.svelte';
  import Landing from '$lib/components/Landing.svelte';
  import ScrollButton from '$lib/components/nav/ScrollButton.svelte';
  import Portrait from '../lib/components/Portrait.svelte';

  import Card from '$lib/components/cards/Card.svelte';

  import QuarterCard from '$lib/components/sections/QuarterCard.svelte';
  import ThirdCard from '$lib/components/sections/ThirdCard.svelte';
  import ResponsiveImageCard from '$lib/components/sections/ResponsiveImageCard.svelte';
  import ThirdImageCard from '$lib/components/sections/ThirdImageCard.svelte';

  import src_comingsoon from '$lib/images/projects/comingsoon.png'
  import src_portfolio from '$lib/images/projects/portfolio.png';
  import src_livinglegend from '$lib/images/projects/livinglegend.png';
  import src_coffeecraft from '$lib/images/projects/coffeecraft.png';
  import src_kagic from '$lib/images/projects/kagic.png';

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

<Landing>
  <div slot="lead">
    <h1>Hi,<br /><span class="name">I'm Owen</span></h1>
    <p class="lead">
      I'm a software engineer. For over seven years, I've dedicated my time to
      enabling success using my technical expertise to produce reliable, scalable,
      and secure cloud solutions.
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
  <Section id="about" title="Who I Am" link="About">
    <Card sizes={["12", "md-8"]}>
      <h5 slot="header" class="card-title">I'm Owen.</h5>
      <p  slot="content" class="card-text">
        I observe the world around me and think about ways to improve it. I envision
        solutions and implement them using my programming prowess and technical expertise.
        For {new Date().getFullYear() - 2017} years, I've driven growth and productivity
        for organizations by developing reliable, scalable, and secure software.
      </p>
    </Card>
    <ThirdCard title="I'm a self-starter.">
      I took control of my destiny and started my own business where I
      learned the direct impact of my decisions and the value of my work.
    </ThirdCard>
    <ThirdCard title="I'm an engineer.">
      I'm proficient in Ruby, JavaScript, and C#, but nothing is beyond my
      reach; I've worked on codebases and frameworks in C++, Python and Java.
    </ThirdCard>
    <ThirdCard title="I'm a full stack developer.">
      I have experience with Ruby on Rails, ASP.NET Core, and JavaScript,
      deploying my solutions on various platforms, including Azure AKS and
      App Service, ECS, and Heroku.
    </ThirdCard>
    <ThirdCard title="I solve problems.">
      I immerse myself in the problem space to understand the challenges, plan, and execute by
      leveraging my expertise and the team's.
    </ThirdCard>
    <ThirdCard title="I'm talented.">
      I've been programming since I was 12, and my journey from start-up to global enterprise has given me a
      sense of what works and what doesn't.
    </ThirdCard>
    <ThirdCard title="I'm adaptive.">
      I work best when I'm closest to the challenge, where I can readily adjust my perspective and formulate
      the most decisive solutions.
    </ThirdCard>
    <ThirdCard title="I'm a team player.">
      I look for opportunities to accomplish more by working with others, whether during caffeinated nights
      at the office or at home over a video call.
    </ThirdCard>
  </Section>

  <Section id="skills" title="My Skills" link="Skills">
    <QuarterCard title="Cloud Development">
      I develop cloud solutions that are reliable, scalable, and secure.
    </QuarterCard>
    <QuarterCard title="Full-Stack Development">
      I build full-stack applications that enable organizations to succeed.
    </QuarterCard>
    <QuarterCard title="Web Development">
      I write HTML, CSS, and JavaScript powered by file servers or frameworks.
    </QuarterCard>
    <QuarterCard title="Cloud Infrastructure">
      I deploy and maintain services on Azure, Heroku, and Digital Ocean.
    </QuarterCard>
    <QuarterCard title="Cloud Services">
      Docker, Kubernetes, Nginx, Azure AKS, Azure App Service, AWS ECS
    </QuarterCard>
    <QuarterCard title="Continuous Integration">
      CI/CD, GitHub Actions, Azure Pipelines, CircleCI, Travis CI
    </QuarterCard>
    <QuarterCard title="Database Management">
      PostgreSQL, SQLite, MongoDB, Redis
    </QuarterCard>
    <QuarterCard title="Integrating Security">
      MFA, SSO, RBAC, along with OWASP, GDPR, and PCI standards
    </QuarterCard>
    <QuarterCard title="Ruby Expertise">
      Ruby on Rails, Sinatra, RSpec, Capybara, DelayedJob, Resque
    </QuarterCard>
    <QuarterCard title="C#/.NET Expertise">
      ASP.NET Core, Entity Framework, NUnit, Moq, Unity, WinForms
    </QuarterCard>
    <QuarterCard title="JavaScript Expertise">
      React, Svelte, Vite, Vue, jQuery, Node.js, Express
    </QuarterCard>
    <QuarterCard title="Artificial Intelligence">
      I leverage ChatGPT and OpenAI to maximize my productivity.
    </QuarterCard>
    <QuarterCard title="Team Collaboration">
      I can collaborate with cross-functional teams to achieve goals.
    </QuarterCard>
    <QuarterCard title="Technical Writing">
      I use my writing skills to document my work and share my knowledge.
    </QuarterCard>
    <QuarterCard title="Project Management">
      I can plan, execute, and deliver projects on time and budget.
    </QuarterCard>
    <QuarterCard title="Continuous Learning">
      I adapt to new challenges by learning new skills and technologies.
    </QuarterCard>
  </Section>
  
  <Section id="journey" title="My Journey" link="Journey">
    <ResponsiveImageCard title="Eclipse Origins" dates="2011 - 2014" src={src_2012} alt="Eclipse Origins, an open source game written in Visual Basic.">
      <p slot="body">
        As a 11-year-old kid on the internet in 2011, I discovered
        TouchOfDeath, an online community dedicated to developing MMORPG
        games in Visual Basic 6 using Eclipse Origins. Through diligent
        self-learning and experimentation, I implemented an authentication
        system and created a feature enabling players to heckle NPC
        merchants in an Orient-medieval video game.
      </p>
      <ul slot="list">
        <li>Acquired proficiency in programming through self-study.</li>
        <li>Implemented a secure authentication system for 60 players.</li>
        <li>Created a chat moderation bot using very gnarly regex.</li>
      </ul>
    </ResponsiveImageCard>
    <ResponsiveImageCard title="Minecraft Modding" dates="2014 - 2016" src={src_2014} alt="Where I developed my Minecraft mods in 2016.">
      <p slot="body">
        I gained online recognition for building popular Minecraft mods
        such as KAGIC, which introduced holographic guardians called Gems;
        Mob Mash, featuring a dozen new enemies; and CoffeeCraft, which focused
        on coffee cultivation and trade. In the most popular project, KAGIC, I
        implemented core features like Gem creation and commands using an
        NLP model for chat interaction, resulting in over 300,000 downloads,
        a 13,000-strong community, and widespread visibility through
        various YouTube Let's Plays and series.
      </p>
      <ul slot="list">
        <li>Achieved over 300,000 downloads, 13,000 players.</li>
        <li>Accumulated a total of 6,500,000 views on YouTube.</li>
        <li>Companion mods amassed over 700,000 downloads.</li>
      </ul>
    </ResponsiveImageCard>
    <ResponsiveImageCard title="Hacker's Holiday" dates="2016 - 2017" src={src_2017} alt="Hacker's Holiday, a three-person development team.">
      <p slot="body">
        I conceived the idea of Hacker's Holiday, a seasonal hackathon
        where my talented friend group and I would tackle local
        community challenges. Through late-night brainstorming sessions
        fueled by caffeine, we developed solutions such as Downtown Connect,
        an event app for Historic Downtown Liberty, an online ordering
        system for a local coffee shop that evolved into Order Coffee
        Online, and an IoT solution for sales forecasting and user
        preference prediction.
      </p>
      <ul slot="list">
        <li>Awarded Liberty Chamber of Commerce 20under20 award.</li>
        <li>Developed MVP that would go on to raise over $500,000.</li>
        <li>Designed an IoT solution that increased conversion by 40%.</li>
      </ul>
    </ResponsiveImageCard>
    <ResponsiveImageCard title="Order Coffee Online" dates="2017 - 2020" src={src_2018} alt="Project planning with Trello over lunch">
      <p slot="body">
        After successfully commercializing Order Coffee Online, I rewrote
        the platform in Ruby on Rails, expanding its capabilities to support
        multiple locations, a mobile app, and a menu editor. I managed
        development, deployment, and maintenance, hosting the app on Digital
        Ocean and integrating Stripe for payments and Twilio for SMS
        notifications. The platform processed over $500,000 in orders,
        served 3,000 customers, and earned me recognition from the Liberty
        Chamber of Commerce 20under20 award, culminating in its sale to
        a local business owner amid the COVID-19 pandemic.
      </p>
      <ul slot="list">
        <li>Awarded Liberty Chamber of Commerce 20under20 award.</li>
        <li>Processed over $500,000 in sales and over 3,000 customers.</li>
        <li>Orchestrated a successful exit in 2020.</li>
      </ul>
    </ResponsiveImageCard>
    <ResponsiveImageCard title="VisualLive" dates="2020 - 2021" src={src_2020} alt="VisualLive">
      <p slot="body">
        Joining VisualLive in 2020, I advanced the company's cloud
        infrastructure and web application, facilitating its expansion
        and efficiency amid rapid growth. Key initiatives included
        migrating the company's cloud infrastructure from Heroku to Azure,
        enhancing security and reliability, and releasing features like a
        chart generator and user management system. These contributions
        propelled VisualLive to become a global leader in augmented reality
        for AEC, leading to a lucrative acquisition by Unity Technologies.
      </p>
      <ul slot="list">
        <li>Enabled efficient workflows with CRM integration.</li>
        <li>Migrated cloud infrastructure from Heroku to Azure.</li>
        <li>Maintained regulatory compliance and GDPR.</li>
        <li>Powered a global leader in the AEC space.</li>
      </ul>
    </ResponsiveImageCard>
    <ResponsiveImageCard title="Unity Technologies" dates="2021 - 2023" src={src_2021} alt="Unity Technologies">
      <p slot="body">
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
      <ul slot="list">
        <li>Increased market share by integrating VisualLive into UIC.</li>
        <li>Slashed hosting costs by 30% with a new scaling strategy.</li>
        <li>Improved performance by 40% with a new 3D model converter.</li>
      </ul>
    </ResponsiveImageCard>
    <ResponsiveImageCard title="The Journey Continues" dates="2023 - Present" src={src_2023} alt="Owen looks into the distance">
      <p slot="body">
        Following Unity's restructuring in 2023, I embraced the market
        downturn as an opportunity for reflection and exploration. While
        job-hunting, I continue to develop my portfolio website with new
        ideas and use GPT and simulated environments in Unity to create
        immersive narratives. I'm focused on seeking new opportunities
        aligned with my skills and interests, upskilling, sharing my
        journey, and fostering a supportive community of talented
        individuals, aiming to inspire others and build great things.
      </p>
      <ul slot="list">
        <li>Seeking new opportunities to exercise skills and gain new ones.</li>
        <li>Using GPT to craft compelling narratives about simulated worlds.</li>
        <li>Developing a portfolio website to showcase my skills.</li>
      </ul>
    </ResponsiveImageCard>
  </Section>
  
  <Section id="projects" title="My Projects" link="Projects">
    <ThirdImageCard title="My Portfolio" src={src_portfolio} alt="Early thumbnail of my portfolio.">
      <p slot="body">
        In 2024, I developed a new portfolio website to showcase my skills and
        experience using SvelteKit, a new way to create single-page web front-ends.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/Akrivus" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="Living Legend" src={src_livinglegend} alt="Procedurally generated island with tide and erosion.">
      <p slot="body">
        I'm developing a procedurally generated island with simulated noise,
        ecosystems, and civilizations that GPT can use to string together epics.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/LivingLegend" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="PhotoGo" src={src_comingsoon} alt="Image coming soon.">
      <p slot="body">
        Upload, share, and comment on photos with PhotoGo, a social media
        platform powered by Ruby on Rails and CarrierWave.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/PhotoGo" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="ChatWS" src={src_comingsoon} alt="Image coming soon.">
      <p slot="body">
        Send messages to friends with ChatWS, a chat application built with
        Sinatra to demonstrate proficiency in Ruby and with WebSockets.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/ChatWS" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="MobiMenu" src={src_comingsoon} alt="Image coming soon.">
      <p slot="body">
        Ruby powered display server for restaurants and cafes who don't have a
        TV with picture mode, but do have a spare Raspberry Pi 4 laying around.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/MobiMenu" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="RESTfulCraft" src={src_comingsoon} alt="Image coming soon.">
      <p slot="body">
        An attempt to teach RESTful API design using Minecraft as a model.
        Blocks are resources, and the world is your API endpoint.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/RESTfulCraft" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="Block Party" src={src_comingsoon} alt="Image coming soon.">
      <p slot="body">
        A spiritual successor to my popular KAGIC mod, Block Party adds <i>tsukumogami</i>,
        blocks that come to life and enjoy the world around them.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/BlockParty" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="CoffeeCraft" src={src_coffeecraft} alt="Image coming soon.">
      <p slot="body">
        A Minecraft mod that introduces the coffee industry from the ground
        up. Grow coffee beans, roast them, build your own cafe and sell to villagers.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/Akrivus/CoffeeCraft" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
    <ThirdImageCard title="KAGIC" src={src_kagic} alt="Image coming soon.">
      <p slot="body">
        A popular Minecraft mod that introduces holographic guardians called
        Gems. Gems are born to serve, and read chat with rule-based NLP.
      </p>
      <div slot="link">
        <i class="fab fa-github" /> 
        <a href="https://github.com/kagic" class="icon-link">View On GitHub</a>
      </div>
    </ThirdImageCard>
  </Section>
</NavArea>