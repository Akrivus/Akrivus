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
          <h5 class="card-title">Back to Basics</h5>
          <h6 class="card-title text-muted">2011 - 2014</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            Browsing Google in 2012, I found many online communities dedicated to game development. One of these communities,
            TouchOfDeath, was dedicated to developing MMORPG games in Visual Basic 6, using an open-source engine called Eclipse Origins.
          </p>
          <p class="card-text">
            Through meticulous scanning of bespoke forum posts and outdated tutorials, I acquired proficiency in VB6 and brought my
            ideas to life using the engine. I implemented a new authentication system at age 13 that enabled players to sign in with
            their forum accounts, fixed the part where it was storing their passwords in plain text, and developed a heckling system
            that allowed players to negotiate with NPC merchants.
          </p>
          <p class="card-text">
            I used programming to breathe life into worlds and characters I'd write stories about. My creative and code-writing skills,
            along with my rallying demeanor, earned me an administrative role. I developed a bot for moderating chat rooms using rule-based
            keyword filters and a suite of content moderation tools to ensure safety and compliance.
          </p>
        </div>
      </ImageCard>
      <ImageCard size="12" src={src_2014} alt="KAGIC, a Steven Universe Minecraft mod.">
        <div slot="header">
          <h5 class="card-title">The Magic Happens</h5>
          <h6 class="card-title text-muted">2014 - 2016</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            As an esteemed member of various online fan communities, I gained a following for my creative and technical talent. I created
            the popular Minecraft mod, KAGIC, which added Gems, stone warriors grown from the ground, using imperative and declarative
            gameplay mechanics. I also developed several popular Minecraft mods, including Mob Mash, which added a dozen new mobs with
            unique mechanics, and CoffeeCraft, which added coffee to cultivate, roast, and trade.
          </p>
          <p class="card-text">
            As the lead developer of KAGIC, I developed several core features, including creating Gems and commanding armies with an NLP
            model for reacting to player chat. KAGIC has been downloaded over 300,000 times, maintained a community of 13,000 people, and
            featured in several YouTube Let's Plays and series.
          </p>
        </div>
      </ImageCard>
      <ImageCard size="12" right=true src={src_2017} alt="Hacker's Holiday, a three-person development team.">
        <div slot="header">
          <h5 class="card-title">Hacker's Holiday</h5>
          <h6 class="card-title text-muted">2016 - 2017</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            I inspired my talented friend group to form Hacker's Holiday, a seasonal hackathon. We explored business centers,
            rooted for problems, brainstormed solutions for over late night caffeine binges, and built our solutions overnight.
            Our objective was to empower the community and learn new skills, and we did just that.
          </p>
          <p class="card-text">
            There was Downtown Connect, an event app for Historical Downtown Liberty. It was created over a single night and
            invited users to local events hosted by local businesses. We also developed an online ordering system for a local coffee
            shop, which spun off into its own business, Order Coffee Online. Finally, we developed an IoT solution that collected
            device data and sales information to generate sales forecasts and predict user preferences.
          </p>
        </div>
      </ImageCard>
      <ImageCard size="12" src={src_2018} alt="Maruchan Instant Lunch over Trello">
        <div slot="header">
          <h5 class="card-title">Order Coffee Online</h5>
          <h6 class="card-title text-muted">2017 - 2020</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            After successfully commercializing the initial version of Order Coffee Online, I rewrote it in Ruby on Rails, adding
            support for multiple stores, a mobile app, and a menu editor. My task was to develop, deploy, and maintain everything.
            After the overhaul, I deployed the app to Digital Ocean and integrated Stripe for payments and Twilio for SMS notifications.
          </p>
          <p class="card-text">
            Its first year exceeded my expectations, processing over $100,000 in orders and attracting over 1,300 customers.
            The momentum persisted into the second year, during which Order Coffee Online processed over $400,000 and served over
            2,000 customers. The achievement of Order Coffee Online led to my second feature in the Liberty Area Chamber of
            Commerce 20under20 award. By the onset of the COVID-19 pandemic, Order Coffee Online had processed over $1,000,000
            in orders and served over 3,000 customers, and I sold it to a local business owner.
          </p>
          <p class="card-text">
            The success of Order Coffee Online was a testament to my ability to develop meaningful solutions. I saw the direct
            impact of my decisions, faced the challenges of running a business, and reaped the rewards.
          </p>
        </div>
      </ImageCard>
      <ImageCard size="12" right=true src={src_2020} alt="VisualLive">
        <div slot="header">
          <h5 class="card-title">VisualLive</h5>
          <h6 class="card-title text-muted">2020 - 2021</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            In 2020, I joined VisualLive, a startup revolutionizing collaboration in the construction industry through augmented
            reality. My responsibility was to advance the company's cloud infrastructure and web applications. I was crucial
            in propelling the company's expansion and efficiency and keeping up with its rapid growth.
          </p>
          <p class="card-text">
            I undertook various initiatives, including migrating the company's cloud infrastructure from Heroku to Azure,
            identifying security vulnerabilities and implementing solutions, and releasing features for the company's web applications,
            including a new dashboard equipped with dynamic chart generation and a new user management system that streamlined
            user onboarding, management, and integrated with third-party CRM systems.
          </p>
          <p class="card-text">
            My contributions to the VisualLive's cloud infrastructure and web applications enabled global expansion,
            positioning it as a global leader in augmented reality for the AEC-O industry and priming it for a lucrative
            acquisition by Unity Technologies the following year.
          </p>
        </div>
      </ImageCard>
      <ImageCard size="12" src={src_2021} alt="Unity Technologies">
        <div slot="header">
          <h5 class="card-title">Unity Technologies</h5>
          <h6 class="card-title text-muted">2021 - 2023</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            In the first year, we were tasked with integrating our offerings with Unity's existing suite of tools, the
            Unity Industrial Collection. Leveraging my expertise in cloud development, I developed data tracking and analytics
            APIs, optimized 3D model streaming and conversion, and implemented a new licensing system.
          </p>
          <p class="card-text">
            I leveraged third-party APIs to integrate with existing systems and enhance project management capabilities
            for clients on the field and in the office. Recognizing the need for on-premise deployments, I repackaged
            VisualLive into an on-premise suite, requiring a new 3D converter, leveraging FFI to integrate with a C++
            library, a new licensing system, and a new deployment scheme. These improvements saved thousands of dollars in hosting
            costs while increasing uptime and significantly reducing response times.
          </p>
          <p class="card-text">
            Additionally, I developed internal tools and packages that reduced development cost and improved velocity,
            actively participated in hackathons showcasing innovative uses for geolocation, data streaming, and augmented
            reality, and used cutting-edge ML/AI technologies like ChatGPT.
          </p>
        </div>
      </ImageCard>
      <ImageCard size="12" right=true src={src_2023} alt="Owen passes a parting look into the distance">
        <div slot="header">
          <h5 class="card-title">The Journey Continues</h5>
          <h6 class="card-title text-muted">2023 - Present</h6>
        </div>
        <div slot="content">
          <p class="card-text">
            Following internal restructuring in 2023, Unity dissolved our division and cut us loose. I took the market downturn
            as an opportunity to reflect on my journey and explore vast opportunities. When not job-hunting, I work on my
            new portfolio website and a project that leverages GPT and a simulated environment with procedurally
            generated ecosystems and civilizations to generate immersive narratives.
          </p>
          <p class="card-text">
            As I continue my journey, I'm exploring new opportunities that align with my skills, experience, and interests and dedicating
            time to upskilll and stake claim in the world and on the web, share my journey with others, and form new connections.
          </p>
          <p class="card-text">
            I aim to use my skills and experiences to build great things, inspire others to do the same, and build a supportive
            community of talented individuals. I'm excited to see what the future holds and look forward to the journey ahead.
          </p>
        </div>
      </ImageCard>
    </div>
  </Section>

  <Section id="myskills" title="My Skills">
    <div class="row">
      <Card size="3">
        <h5 slot="header" class="card-title">Software Development</h5>
        <div slot="content" class="card-text">
          I develop software solutions that are reliable, scalable, and secure.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Full-Stack Development</h5>
        <div slot="content" class="card-text">
          I build full-stack applications that enable organizations to succeed.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Web Development</h5>
        <div slot="content" class="card-text">
          I write HTML, CSS, JavaScript, and develop with various frameworks.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Cloud Infrastructure</h5>
        <div slot="content" class="card-text">
          I deploy and maintain services on Azure, Heroku, and Digital Ocean.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Cloud Services</h5>
        <div slot="content" class="card-text">
          Docker, Kubernetes, Nginx, Azure AKS, Azure App Service, AWS ECS
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">DevOps</h5>
        <div slot="content" class="card-text">
          CI/CD, GitHub Actions, Azure Pipelines, CircleCI, Travis CI
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Database Management</h5>
        <div slot="content" class="card-text">
          PostgreSQL, SQLite, MongoDB, Redis
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Integrating Security</h5>
        <div slot="content" class="card-text">
          MFA, SSO, RBAC, along with OWASP, GDPR, NIST and PCI standards
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Ruby</h5>
        <div slot="content" class="card-text">
          Ruby on Rails, Sinatra, RSpec, Capybara, DelayedJob, Resque
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">C#/.NET</h5>
        <div slot="content" class="card-text">
          ASP.NET Core, Entity Framework, NUnit, Moq, Unity, WinForms
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">JavaScript</h5>
        <div slot="content" class="card-text">
          React, Svelte, Vite, Vue, jQuery, Node.js, Express
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Artificial Intelligence</h5>
        <div slot="content" class="card-text">
          I leverage ChatGPT and OpenAI to maximize my productivity.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Team Collaboration</h5>
        <div slot="content" class="card-text">
          I can collaborate with cross-functional teams to achieve goals.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Technical Writing</h5>
        <div slot="content" class="card-text">
          I use my writing skills to document my work and share my knowledge.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Project Management</h5>
        <div slot="content" class="card-text">
          I can plan, execute, and deliver projects on time and on budget.
        </div>
      </Card>
      <Card size="3">
        <h5 slot="header" class="card-title">Continuous Learning</h5>
        <div slot="content" class="card-text">
          I adapt to new challenges by learning new skills and technologies.
        </div>
      </Card>
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