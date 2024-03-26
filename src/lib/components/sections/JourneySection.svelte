<script>
  import Section from "$lib/components/Section.svelte";
  import ResponsiveImageCard from "$lib/components/cards/smart/ResponsiveImageCard.svelte";

  import src_2012 from "$lib/images/journey/2012.jpg";
  import src_2014 from "$lib/images/journey/2014.jpg";
  import src_2017 from "$lib/images/journey/2017.jpg";
  import src_2018 from "$lib/images/journey/2018.jpg";
  import src_2020 from "$lib/images/journey/2020.jpg";
  import src_2021 from "$lib/images/journey/2021.jpg";
  import src_2023 from "$lib/images/journey/2023.jpg";
</script>

<Section id="journey" title="My Journey" link="Journey">
  <ResponsiveImageCard title="Eclipse Origins" dates="2011 - 2014" src={src_2012} alt="Eclipse Origins, an open source game written in Visual Basic.">
    <p slot="body">
      In 2011 (I tell stories chronologically), I discovered
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
      implemented core features like Gem creation and commands using OpenNLP
      for token, POS tag ,and sentence extraction. KAGIC garnered over
      300,000 downloads, a 13,000-strong community, and widespread visibility through
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
      fueled by caffeine and wings, we developed an online ordering
      system for a local coffee shop that evolved into Order Coffee
      Online, and an IoT solution for sales forecasting and user prediction.
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
      <li>Improved performance by up to 90% with a new 3D model converter.</li>
    </ul>
  </ResponsiveImageCard>
  <ResponsiveImageCard title="The Journey Continues" dates="2023 - Present" src={src_2023} alt="Owen looks into the distance">
    <p slot="body">
      Following Unity's restructuring in 2023, I embraced the market
      downturn as an opportunity for reflection and exploration. While
      job-hunting, I continue to develop my portfolio with new
      ideas and use GPT and simulated environments in Unity to create
      immersive narratives. I'm focused on seeking new opportunities
      aligned with my skills and interests, upskilling, sharing my
      journey, and fostering a supportive community of talented
      individuals, aiming to inspire others and build great things.
    </p>
    <ul slot="list">
      <li>Seeking new opportunities to exercise skills and gain new ones.</li>
      <li>Using GPT to craft compelling narratives about simulated worlds.</li>
      <li>Developed a portfolio website to showcase my skills.</li>
    </ul>
  </ResponsiveImageCard>
</Section>