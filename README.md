# RAG Chatbot Experiments

Experiments building Retrieval-Augmented Generation (RAG) pipelines using LlamaIndex and Gemini. Covers both a simple question-answering chatbot and a full document retrieval pipeline that lets an AI pull relevant context from large document sets before responding.

## What it does

- **Simple chatbot** — basic Q&A using LlamaIndex + Gemini (no document retrieval)
- **RAG pipeline** — full retrieval-augmented pipeline that ingests documents, indexes them, and retrieves relevant chunks to ground AI responses

## Stack

- Python
- [LlamaIndex](https://www.llamaindex.ai/)
- Google Gemini API
- Jupyter Notebooks

## Files

| File | Description |
|------|-------------|
| `simple_chatbot.ipynb` | Basic LlamaIndex + Gemini chatbot |
| `Rag_pipeline.ipynb` | Full RAG pipeline for document retrieval |

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

- **RAG** — Instead of relying solely on an LLM's training data, RAG retrieves relevant documents at query time and injects them as context, reducing hallucinations and enabling domain-specific answers.
- **LlamaIndex** — Handles document ingestion, chunking, embedding, and vector-based retrieval.
