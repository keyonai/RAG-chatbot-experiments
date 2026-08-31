# RAG Chatbot Experiments

Playing around with Retrieval-Augmented Generation (RAG) using LlamaIndex. Three notebooks — a basic chatbot, a full RAG pipeline, and one built entirely on open source models.

## Notebooks

| File | What it does |
|------|-------------|
| `simple_chatbot.ipynb` | Basic Q&A with LlamaIndex + Gemini |
| `Rag_pipeline.ipynb` | Full RAG pipeline with document retrieval |
| `Keyonai_W_RAG_with_Open_Source_models.ipynb` | Same thing but with open source models |

## Run it

```bash
pip install llama-index google-generativeai
```

Add your Gemini API key:
```python
import os
os.environ["GOOGLE_API_KEY"] = "your-key-here"
```

Then open a notebook in Jupyter and run all cells.
