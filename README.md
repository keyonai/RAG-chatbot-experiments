# RAG Chatbot Experiments

Experiments building Retrieval-Augmented Generation (RAG) pipelines using LlamaIndex, Gemini, and open source models. Covers a simple question-answering chatbot, a full document retrieval pipeline, and a RAG setup built entirely on open source models.

## What it does

- **Simple chatbot** â€” basic Q&A using LlamaIndex + Gemini (no document retrieval)
- **RAG pipeline** â€” full retrieval-augmented pipeline that ingests documents, indexes them, and retrieves relevant chunks to ground AI responses
- **Open source RAG** â€” RAG pipeline built with open source models, no proprietary API required

## Stack

- Python
- [LlamaIndex](https://www.llamaindex.ai/)
- Google Gemini API
- Open source models (Hugging Face)
- Jupyter Notebooks

## Files

| File | Description |
|------|-------------|
| `simple_chatbot.ipynb` | Basic LlamaIndex + Gemini chatbot |
| `Rag_pipeline.ipynb` | Full RAG pipeline for document retrieval |
| `Keyonai_W_RAG_with_Open_Source_models.ipynb` | RAG pipeline using open source models |

## Setup

```bash
pip install llama-index google-generativeai
```

Set your Gemini API key before running:
```python
import os
os.environ["GOOGLE_API_KEY"] = "your-key-here"
```

Then open either notebook in Jupyter and run all cells.

## Key concepts

- **RAG** â€” Instead of relying solely on an LLM's training data, RAG retrieves relevant documents at query time and injects them as context, reducing hallucinations and enabling domain-specific answers.
- **LlamaIndex** â€” Handles document ingestion, chunking, embedding, and vector-based retrieval.


## Docker

`ash
docker build -t rag-chatbot-experiments .
docker run -p 8888:8888 -e GOOGLE_API_KEY=your-key-here rag-chatbot-experiments
`

Then open http://localhost:8888 in your browser.
