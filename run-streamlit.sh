#!/bin/bash
docker run --rm -it -p 80:8501 albertodeduce/streamlit-cam-demo \
streamlit run https://raw.githubusercontent.com/whitphx/streamlit-webrtc-example/main/app.py
