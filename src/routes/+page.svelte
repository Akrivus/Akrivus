<script>
  import NavArea from '../lib/components/nav/NavArea.svelte';
  import Section from '$lib/components/Section.svelte';
  import Landing from '$lib/components/Landing.svelte';
  import ScrollButton from '$lib/components/nav/ScrollButton.svelte';
  import Portrait from '../lib/components/Portrait.svelte';
  import Project from '$lib/components/Project.svelte';

  import Card from '$lib/components/cards/Card.svelte';
  import ImageCard from '$lib/components/cards/ImageCard.svelte';

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

<Landing>
  <div slot="lead">
    <h1>Hi,<br /><span class="name">I'm Owen</span></h1>
    <p class="lead">
      I empower organizations with my experience and expertise in building cloud solutions
      that deliver impact, enabling growth and driving productivity.
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
      <Card size="8">
        <h5 slot="header" class="card-title">I'm Owen.</h5>
        <p  slot="content" class="card-text">
          I observe the world around me and think about ways to improve it. I envision
          solutions and implement them using my programming prowess and technical expertise.
          For {new Date().getFullYear() - 2017} years, I've driven growth and productivity
          for organizations by developing software that is reliable, scalable, and secure.
        </p>
      </Card>
      <Card>
        <h5 slot="header" class="card-title">I solve problems.</h5>
        <p  slot="content" class="card-text">
          I immerse myself in the problem space to understand the challenges, which I plan and execute on by
          leveraging my skills and the talent of my team.
        </p>
      </Card>
      <Card>
        <h5 slot="header" class="card-title">I'm talented.</h5>
        <p  slot="content" class="card-text">
          I've been programming since I was 12, and my journey from start-up to global enterprise has given me a
          sense of what works and what doesn't.
        </p>
      </Card>
      <Card>
        <h5 slot="header" class="card-title">I'm adaptive.</h5>
        <p  slot="content" class="card-text">
          I work best when I'm closest to the challenge, where I can readily adjust my perspective and formulate
          the most decisive solutions.
        </p>
      </Card>
      <Card>
        <h5 slot="header" class="card-title">I'm a team player.</h5>
        <p  slot="content" class="card-text">
          I look for opportunities to accomplish more by working with others, whether it's during caffeinated nights
          at the office or at home over a video call.
        </p>
      </Card>
      <Card>
        <h5 slot="header" class="card-title">I'm an engineer.</h5>
        <p  slot="content" class="card-text">
          I'm proficient in Ruby, JavaScript, C#, but nothing is beyond my reach, I've worked on
          codebases and frameworks in C++, Python and Java.
        </p>
      </Card>
      <Card>
        <h5 slot="header" class="card-title">I'm a full stack developer.</h5>
        <p  slot="content" class="card-text">
          I'm experienced with Ruby on Rails, ASP.NET Core, React, and Svelte, and I've deployed my solutions
          on Azure AKS and App Service, ECS, and Heroku.
        </p>
      </Card>
      <Card>
        <h5 slot="header" class="card-title">I'm an entrepreneur.</h5>
        <p  slot="content" class="card-text">
          I took control of my destiny in 2017 by starting my own business, and learned the direct impact of my
          decisions and the value of my work.
        </p>
      </Card>
    </div>
  </Section>
  
  <Section id="myjourney" title="My Journey">
    <div class="row">
      <ImageCard size="12" right=true src={src_2012} alt="Eclipse Origins, an open source game written in Visual Basic.">
        <div slot="header">
          <h5 class="card-title">My Origin</h5>
          <h6 class="card-title text-muted">2011 - 2014</h6>
        </div>
        <p  slot="content" class="card-text">
          Growing up in the small town of Plattspurg, Missouri, I came across Eclipse Origins, a game engine
          facilitating the creation of multiplayer games. Through meticulous scanning of bespoke forum posts and
          outdated tutorials, I acquired proficiency in Visual Basic 6 and brought my ideas to life using the engine,
          which I shared on the internet.
          <br /><br />
          Due to the necessity of installing outdated ActiveX controls, I opted to create my own engine, Eclipse Opal,
          utilizing C# with SFML. Although incomplete, this endeavor familiarized me with the .NET framework,
          object-oriented programming, and basic TCP/IP networking, providing me with a solid foundation
          for my subsequent career and comprehension of software development.
        </p>
      </ImageCard>
      <ImageCard size="12" src={src_2014} alt="KAGIC, a Steven Universe Minecraft mod.">
        <div slot="header">
          <h5 class="card-title">Diamond In The Rough</h5>
          <h6 class="card-title text-muted">2014 - 2016</h6>
        </div>
        <p  slot="content" class="card-text">
          My recognition in online communities led to my involvement in the development of KAGIC, a Minecraft mod
          where players can create and command armies of Gems, stone warriors grown from the ground. I was the core developer
          for the mod until 2019, where I contributed to the mod's core features, including systems for growing Gems,
          commanding armies, and creating custom Gems using JSON resource packs. KAGIC has been downloaded
          over 150,000 times, and has been featured in several YouTube Let's Plays and series.
          <br /><br />
          Alongside KAGIC, I developed a number of other Minecraft mods, adding depth to the game's mechanics and
          providing a rewarding experience for players. Included are Mob Mash, a mod that adds a number of new mobs
          with unique mechanics, and CoffeeCraft, a mod that adds coffee to cultivate, roast, and trade.
        </p>
      </ImageCard>
      <ImageCard size="12" right=true src={src_2017} alt="Hacker's Holiday, a three-person development team.">
        <div slot="header">
          <h5 class="card-title">Appy Days</h5>
          <h6 class="card-title text-muted">2016 - 2017</h6>
        </div>
        <p  slot="content" class="card-text">
          After moving to Kansas City, I formed a three-person development team, Hacker's Holiday, with the goal of
          developing impactful software to uplift local businesses. We developed a social media platform for sharing
          and discovering events, called Downtown Connect, and a mobile app for ordering coffee online, called Order Coffee Online.
          <br /><br />
          Alongside the Hacker's Holiday, Jacob, Emily, and I developed a number of other projects during hackathons,
          including a chat app with productivity features, an app for helping people with depression, and a location-based
          app for disaster relief and recovery. Our efforts were recognized by the Liberty Area Chamber of Commerce,
          who awarded us recipients to the Liberty Area 20under20 award.
        </p>
      </ImageCard>
      <ImageCard size="12" src={src_2018} alt="Maruchan Instant Lunch over Trello">
        <div slot="header">
          <h5 class="card-title">Order Coffee Online</h5>
          <h6 class="card-title text-muted">2017 - 2020</h6>
        </div>
        <p  slot="content" class="card-text">
          With a successful MVP written in Sinatra, I rewrote Order Coffee Online in Ruby on Rails, adding support for
          multiple locations, a mobile app, and a number of other features. I deployed the app on Digital Ocean, and
          integrated it with Stripe for payments and Twilio for SMS notifications. In its first year, Order Coffee Online
          processed over $100,000 in orders, and was used by over 1,300 customers. In its second year, Order Coffee Online
          processed over $400,000 in orders, and was used by over 2,000 customers, and resulted in me being featured a
          second time in the Liberty Area 20under20 award.
        </p>
      </ImageCard>
      <ImageCard size="12" right=true src={src_2020} alt="VisualLive">
        <div slot="header">
          <h5 class="card-title">VisualLive</h5>
          <h6 class="card-title text-muted">2020 - 2021</h6>
        </div>
        <p  slot="content" class="card-text">
          After a successful exit from Order Coffee Online, I joined VisualLive, a startup developing augmented reality
          solutions for the construction industry. I developed a number of features for the company's web application,
          including a new dashboard for generating charts, a new customer management system, along with a refactor of
          the company's existing codebase. After this, I led the advancement of the company's cloud infrastructure,
          migrating the company's web application from Heroku to Azure, and developing a new CI/CD pipeline using
          GitHub Actions. I also assessed the company's security posture, secured the company's cloud resources,
          and implemented a number of security features, including SSO, MFA, and RBAC, enabling global expansion and
          priming the company for a successful acquisition by Unity Technologies.
        </p>
      </ImageCard>
      <ImageCard size="12" src={src_2021} alt="Unity Technologies">
        <div slot="header">
          <h5 class="card-title">Unity Technologies</h5>
          <h6 class="card-title text-muted">2021 - 2023</h6>
        </div>
        <p  slot="content" class="card-text">
          At Unity, I resumed my role as a full stack developer, working on the company's cloud infrastructure and
          web applications. I was key in the integration of VisualLive's cloud offerings ino Unity's cloud platform,
          and led the development of features for tracking order statuses for construction projects with third party data
          connectors. I packaged VisualLive's cloud offerings in an on-premise suite, necessitating a new 3D model converter
          that leveraged FFI calls to a C++ library in a microservice-ready Sinatra application, enabling improved performance
          and scalability, saving the company over $30,000 in cloud costs. Participated in a hackathon using geolocation
          services and augmented reality for a search-and-destroy game. I also developed a package for Unity's UI Toolkit,
          enabling developers to hit the ground running and build responsive user interfaces for their games and applications.
        </p>
      </ImageCard>
      <ImageCard size="12" right=true src={src_2023} alt="Owen passes a parting look into the distance">
        <div slot="header">
          <h5 class="card-title">The Journey Continues</h5>
          <h6 class="card-title text-muted">2023 - Present</h6>
        </div>
        <p  slot="content" class="card-text">
          Due to internal restructuring, I was laid off from Unity. I'm currently seeking new opportunities to apply my
          skills and experience in developing impactful software that delivers value and drives growth. I'm also
          developing a number of projects, including a new portfolio website, and an AI storytelling project using a
          procedurally generated island with simulated erosion, ecosystems, and civilizations.
        </p>
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