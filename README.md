# Healthcare RAG Agent 🤖

I built this Agent with help of Real Python's LLM RAG Chatbot [tutorial](https://realpython.com/build-llm-rag-chatbot-with-langchain), to have an LLM project to build upon as I learn new topics and experiment with new ideas.

Along the way, I learned about LangChain, how and when to use knowledge graphs, and how to quickly deploy LLM RAG apps with FastAPI and Streamlit.

## Getting started

Start by cloning this repo and adding a `.env` file with the following environment variables:

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

Next, navigate to the project root, start Docker, make sure your AuraDB instance is up and running, and then run:

```
make build
```

The build will start the servers, however, you can also start the server with the command:

```
make start
```

and stop all containers by running:

```
make stop
```

You can interact with the chatbot API docs on `localhost:8000/docs`, and the UI on `localhost:8501`:

<img width="1614" alt="Screenshot 2024-03-27 at 19 44 54" src="https://github.com/asanmateu/healthcare-rag-chatbot/assets/62403518/ef6de300-5dbd-41a0-b89f-34fbe94473bf">


## Database design

It would be useful to look at the way the database has been structured to come up with some potential questions you want to make to the chatbot:

<img width="500" alt="Screenshot 2024-04-07 at 23 45 47" src="https://github.com/asanmateu/healthcare-rag-chatbot/assets/62403518/4884891c-b715-452b-af37-5fe69b9bad9e">
  
### Node properties

<img width="500" alt="Screenshot 2024-04-07 at 23 44 17" src="https://github.com/asanmateu/healthcare-rag-chatbot/assets/62403518/56c976ac-6b27-409b-a4e3-81e1caba70d5">

### Relationship properties

<img width="500" alt="Screenshot 2024-04-07 at 23 44 57" src="https://github.com/asanmateu/healthcare-rag-chatbot/assets/62403518/f6d8ebe5-e808-4e8e-9a4c-5e15d47fa25e">

