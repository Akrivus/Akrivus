In 2017, I identified a gap in the market for a streamlined, user-friendly platform that allowed customers to order coffee online for pickup at their local cafés. Many small businesses lacked the technical infrastructure to offer online ordering, putting them at a disadvantage compared to larger chains. To address this, I built OCO, a platform designed to empower coffeeshops by providing them with a simple, cost-effective way to accept online orders.

As the founder and lead developer, I was responsible for every aspect of the project—from ideation and development to marketing and client engagement. My goal was to weave my foundation within the tightly-knit coffee industry and position OCO as a leader in coffee-tech.
##### Stack
Ruby, Sinatra, Ruby on Rails, PostgreSQL, MongoDB, DigitalOcean
*Integrating* Twilio, Stripe, Square
##### Objective
The primary challenges in building OCO were:
1. User Experience
	- Designing a seamless ordering workflow, providing clients a competitive gain and offering consumers a less morally taxing option for their morning coffee.
2. Cost Efficiency
	- Many small businesses run on tight budgets, reducing initial investment and emphasizing the utility of platform fees and software-as-a-service models.
3. Market Penetration
	- Most of OCO's clientele was owner-operated, requiring a dual focus on management such as editing menus, promotional items, discounts, and tax reconciliation.
##### Implementation
I focused on creating a robust, user-friendly platform while actively engaging with clients to ensure the product met their needs. My approach involved the following:
1. Development of Minimum-Viable-Product
	- I developed the initial version of OCO using Ruby and Sinatra. This version allowed customers to enter their name and phone number, select their order from a menu, and checkout through Square. I charged clients a subscription-based model.
2. Development of Menu Manager
	- To provide baristas and café owners a tool to manage orders and communicate with customers in real-time, I deployed a client-side application in dHTML as a Cordova app that fetched and updated order statuses and the ability to make quick menu updates.
3. Development of Ordering Platform
	- As OCO expanded to two cafés, I rebuilt the platform in Ruby on Rails and made the switch to MongoDB from PostgreSQL to enable schema-free storage with documents, and integrated Stripe for a concise ordering workflow and an automatic revenue split.
1. Companion Projects
	- To maintain competitivity, I created solutions such as a pax-counter in Python that cross-matched device IDs with order history, allowing the app to infer user orders based on a combination of weather, environmental factors, and in-store purchase history.
##### Impact
The launch of OCO provided a foundation for coffeeshops such as Hammerhand Coffee and PH Coffee to start accepting online orders, offering their customers a convenient new way to order their favorite drinks at the push of a button.
##### Conclusion
Founding and leading Order Coffee Online was a rewarding experience that demonstrated my ability to identify market needs, develop innovative solutions, and engage directly with clients to drive adoption. Through a combination of technical expertise and hands-on client interaction, I built a platform that not only solved a real problem but also created tangible value for small businesses. This case study reflects my passion for solving problems and building intuitive systems that make a difference in people’s everyday lives.