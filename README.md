# Hospital LLM RAG Agent 🤖

I decided to build this chatbot to have an LLM project to build upon as I learn new topics and experiment with new ideas.

I built this prototype with the help of Real Python's LLM RAG Chatbot [tutorial](https://realpython.com/build-llm-rag-chatbot-with-langchain), which I highly recommend. 

Along the way, I learned about LangChain, how and when to use graph databases, and how to quickly deploy LLM RAG apps with FastAPI and Streamlit.

----

Why don't you check it out? 

Start by cloning this repo and adding a .env file with the following environment variables:

```
OPENAI_API_KEY=<YOUR_OPENAI_API_KEY>

NEO4J_URI=<YOUR_NEO4J_URI>
NEO4J_USERNAME=<YOUR_NEO4J_USERNAME>
NEO4J_PASSWORD=<YOUR_NEO4J_PASSWORD>

HOSPITALS_CSV_PATH=https://raw.githubusercontent.com/hfhoffman1144/langchain_neo4j_rag_app/main/data/hospitals.csv
PAYERS_CSV_PATH=https://raw.githubusercontent.com/hfhoffman1144/langchain_neo4j_rag_app/main/data/payers.csv
PHYSICIANS_CSV_PATH=https://raw.githubusercontent.com/hfhoffman1144/langchain_neo4j_rag_app/main/data/physicians.csv
PATIENTS_CSV_PATH=https://raw.githubusercontent.com/hfhoffman1144/langchain_neo4j_rag_app/main/data/patients.csv
VISITS_CSV_PATH=https://raw.githubusercontent.com/hfhoffman1144/langchain_neo4j_rag_app/main/data/visits.csv
REVIEWS_CSV_PATH=https://raw.githubusercontent.com/hfhoffman1144/langchain_neo4j_rag_app/main/data/reviews.csv

HOSPITAL_AGENT_MODEL=gpt-3.5-turbo-1106
HOSPITAL_CYPHER_MODEL=gpt-3.5-turbo-1106
HOSPITAL_QA_MODEL=gpt-3.5-turbo-0125

CHATBOT_URL=http://host.docker.internal:8000/hospital-rag-agent
```

Next, navigate to the project root, start Docker, and run:

```
make build
```

This will run the ETL to load the data into your Neo4j instance and will start both BE and FE servers. 

However, you can also start the web app by running:

```
make start
```

and stop all containers by running:

```
make stop
```

Interact with the chatbot on `localhost:8501`

-----

Next up, I'd like to take some time to explore vector databases' full potential by building a few small apps.

Nevertheless, I am planning to add soon a RAG evaluation system to this hospital graph RAG chatbot.


