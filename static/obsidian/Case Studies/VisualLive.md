**Duration:** March 2020 - March 2021  
**Role:** Full-Stack Software Engineer
#### Background
VisualLive, a leading augmented reality (AR) company in the construction and manufacturing industries, faced significant challenges with its cloud infrastructure and codebase in early 2020. The company’s platform, which was crucial for visualizing and managing complex 3D models, had been passed between various consultants over time, resulting in a fragmented and inefficient system. The platform was plagued by long load times, frequent performance issues, and technical debt, which hindered its ability to scale and meet the demands of its users.

When I joined VisualLive, the company was preparing for potential acquisition by Unity Technologies. My primary objective was to stabilize and optimize the platform, making it a viable and attractive asset for acquisition.
#### Challenge
The primary challenges were:
- **Performance Issues:** The platform was slow and inefficient, with some index pages taking minutes to load, which was unacceptable for users who relied on real-time data and model visualization.
- **Technical Debt:** Years of piecemeal development by different consultants had left the codebase in disarray, with outdated libraries, poor optimization, and a lack of cohesive structure.
- **Scalability:** The existing infrastructure was not built to scale efficiently, which was a significant roadblock for future growth and acquisition.
#### Solution
To address these challenges, I implemented a comprehensive plan to clean up the codebase, optimize performance, and prepare the platform for scalability. My approach included the following key initiatives:
1. **Back-End Refactor:**
    - **Objective:** To improve performance and reduce technical debt.
    - **Implementation:** I conducted a thorough audit of the existing codebase, identifying and removing deprecated serialization libraries in favor of modern, leaner alternatives like JBuilder and OJ. I also integrated Scout APM and Sentry for performance and error monitoring, which allowed me to identify inefficient ORM queries and bloated controller actions. These were refactored, resulting in a 50% reduction in response times and a 92% reduction in error rates.
    - **Impact:** This refactor dramatically improved the platform’s performance, making it faster, more reliable, and easier to maintain.
2. **Front-End Refactor:**
    - **Objective:** To enhance user experience and accessibility.
    - **Implementation:** I upgraded the front-end experience, particularly for mobile users, by refactoring the interface with Bootstrap. This included updating icons and images, adding tooltips, and improving screen reader support to ensure the platform was more accessible and user-friendly.
    - **Impact:** The front-end refactor made the platform more responsive and visually appealing, leading to a better overall user experience.
3. **Azure Cloud Migration:**
    - **Objective:** To improve infrastructure stability and scalability.
    - **Implementation:** I led the migration of VisualLive’s cloud infrastructure from Amazon S3 and Heroku to Azure. This included setting up Azure App Service for the web application and Azure Database for PostgreSQL, which provided a more robust and scalable environment for the platform.
    - **Impact:** The migration to Azure improved the platform’s stability and scalability, laying the groundwork for future growth and integration with Unity’s cloud ecosystem.
4. **Performance Optimization:**
    - **Objective:** To reduce load times and enhance platform efficiency.
    - **Implementation:** I optimized database queries, refactored inefficient code, and implemented SAST/DAST and integration tests in CI/CD with GitLab CI. These efforts reduced page load times from minutes to seconds, significantly improving the platform’s usability.
    - **Impact:** These optimizations transformed the platform from a sluggish, unreliable tool into a fast and efficient system, ready for acquisition.
5. **Autodesk Forge Viewer & Uploader:**
    - **Objective:** To maintain and enhance key features of the platform.
    - **Implementation:** I updated the React-based 3D viewer to align with the latest authorization workflows and integrated it seamlessly into the Rails application. This ensured that users could continue to visualize and manage 3D models effectively.
    - **Impact:** Maintaining and updating this critical feature preserved the platform’s core functionality, essential for user satisfaction and retention.
6. **Model Converter Refactor:**
    - **Objective:** To streamline the model conversion process post-migration.
    - **Implementation:** The migration to Azure necessitated a refactor of the model conversion process. I optimized the workflow to better leverage Azure’s capabilities, reducing processing times and improving reliability.
    - **Impact:** The refactor ensured that the platform could handle model conversions more efficiently, further enhancing performance.
#### Results
The comprehensive overhaul of VisualLive’s platform had a profound impact on the company’s trajectory:
- **Dramatically Improved Performance:** Load times were reduced from minutes to seconds, and response times were halved, making the platform far more efficient and user-friendly.
- **Increased Stability and Scalability:** The migration to Azure and the refactoring of both back-end and front-end systems created a stable and scalable environment, ready to support future growth.
- **Successful Acquisition:** The improvements I implemented positioned VisualLive as an attractive asset for Unity Technologies, leading to its successful acquisition in 2020.
#### Conclusion
My work at VisualLive was a transformative experience, where I leveraged my problem-solving skills and intuition to turn a fragmented, inefficient platform into a polished, high-performing system. By addressing technical debt, optimizing performance, and preparing the infrastructure for scalability, I not only improved the user experience but also played a key role in setting the stage for VisualLive’s successful acquisition by Unity Technologies.