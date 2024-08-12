**Duration:** March 2020 - June 2023  
#### Background
In March 2020, Unity Technologies acquired VisualLive, a leading provider of augmented reality solutions for construction and manufacturing industries. With this acquisition, Unity aimed to integrate VisualLive’s innovative technologies into its own cloud ecosystem to expand its offerings and improve user experience. I was onboarded during this acquisition to lead the maintenance and integration efforts, focusing on streamlining processes, enhancing system performance, and ensuring seamless user experiences.
#### Challenge
The primary challenge was to integrate VisualLive’s complex technologies into Unity’s cloud environment while maintaining system stability and enhancing usability. The goal was to provide developers and users with powerful tools that were easy to use and highly efficient. This required addressing several key issues:
- **Compatibility:** Ensuring that VisualLive’s tools were compatible with Unity’s existing cloud infrastructure.
- **Scalability:** Making sure that the integrated systems could handle large-scale operations and a growing user base.
- **User Experience:** Simplifying complex workflows to make them more intuitive and user-friendly, especially for non-technical users.
#### Solution
To address these challenges, I focused on creating solutions that not only met technical requirements but also prioritized user experience. My approach included the following key initiatives:
1. **Status Tracking API:**
    - **Objective:** To enable users to add detailed metadata to 3D models and track changes effectively.
    - **Implementation:** I developed the Status Tracking API, which allowed developers to tag data to specific parts of building plans and construction site visualizations. This made it easier for users to manage and monitor changes, improving their ability to track progress and collaborate effectively.
    - **Impact:** This API streamlined workflows, reducing the time and effort required to manage large datasets and complex models.
2. **Issue Management Dashboard:**
    - **Objective:** To streamline the management of third-party data connectors and improve data integration.
    - **Implementation:** I designed and developed a dashboard in React, integrated with Unity Reflect Cloud, that allowed users to manage connections with services like Procore, Autodesk Construction Cloud, and Google Drive.
    - **Impact:** The dashboard simplified data management, making it easier for users to connect and sync their data, enhancing overall productivity.
3. **Unity Cloud Authenticator for HoloLens:**
    - **Objective:** To resolve compatibility issues with Unity’s default RPC client and ensure secure access to Unity Cloud services on the Microsoft HoloLens.
    - **Implementation:** I created a new authenticator class using OAuth flow and a local HTTP listener, along with a QR code-based sign-on process, to facilitate secure and seamless authentication for HoloLens users.
    - **Impact:** This solution enabled wider adoption of Unity’s cloud services on AR devices, expanding Unity’s reach in the AR market.
4. **3D Streaming Client and Server:**
    - **Objective:** To enhance the visualization and interaction with very large 3D models streamed from the cloud.
    - **Implementation:** I developed a custom-built server in Python, paired with a Unity application, to allow users to navigate 3D models in real-time. The server utilized FastAPI for authentication and WebSocket for data streaming, ensuring smooth and responsive user experiences.
    - **Impact:** This solution significantly improved the performance of 3D model visualization, making it more accessible and efficient for users in construction and manufacturing industries.
5. **On-Prem Model Converter:**
    - **Objective:** To optimize the process of converting large 3D model files for use in Unity’s cloud environment.
    - **Implementation:** I designed a lean microservice in Ruby using Sinatra, which simplified the conversion process and significantly reduced processing times by 67%. Containerizing this service with Docker and deploying it on a Kubernetes cluster further reduced server costs by over 30%.
    - **Impact:** This initiative led to substantial cost savings and improved the efficiency of model conversion, benefiting both Unity and its users.
#### Results
The solutions I implemented during my time at Unity delivered significant benefits, including:
- **Improved Efficiency:** The Status Tracking API and On-Prem Model Converter streamlined key workflows, reducing processing times and cutting costs.
- **Enhanced User Experience:** By focusing on intuitive design and seamless integration, I made complex tools more accessible and user-friendly.
- **Increased Adoption:** The Unity Cloud Authenticator and VL3D Streaming solutions expanded the usability of Unity’s cloud services, particularly on AR devices like the Microsoft HoloLens.
#### Conclusion
My work at Unity exemplified my commitment to solving complex technical challenges with innovative, user-centered solutions. By leveraging my expertise in cloud integration and system optimization, I was able to significantly enhance Unity’s cloud offerings, ultimately driving business growth and improving user satisfaction.