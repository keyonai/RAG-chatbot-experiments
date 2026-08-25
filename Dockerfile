FROM python:3.11-slim

RUN apt-get update && apt-get install -y libgl1 libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN pip install --no-cache-dir \
    jupyter \
    llama-index \
    llama-index-llms-gemini \
    google-generativeai \
    llama-index-embeddings-gemini

COPY . .

EXPOSE 8888

# Set your Gemini API key when running:
# docker run -p 8888:8888 -e GOOGLE_API_KEY=your-key rag-chatbot-experiments

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
