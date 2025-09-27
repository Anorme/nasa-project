ZTM complete node developer project

### NASA Mission Control Interface  
A full-stack space exploration dashboard that simulates mission planning to habitable exoplanets. The frontend UI allows users to browse historical SpaceX launches and schedule new missions, while the backend integrates real-time data from the SpaceX API and filters planetary candidates from NASA’s Kepler dataset using a custom habitability utility.

**Key Features:**
- Planetary screening logic using parsed Kepler CSV data to identify potentially habitable planets based on size, temperature, and orbital characteristics  
- Live mission feed displaying SpaceX launch data with dynamic updates and historical context  
- Mission scheduling interface enabling users to create new launch entries targeting viable exoplanets, with backend validation and persistence  
- Modular backend architecture built with Node.js and Express, featuring Axios-powered API calls and structured for scalability

**Tech Stack:** React · Node.js · Express · MongoDB · Axios
