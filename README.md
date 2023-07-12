# multi2vec-clip-inference
The inference container for the clip module

## Documentation

Documentation for this module can be found [here](https://weaviate.io/developers/weaviate/current/retriever-vectorizer-modules/multi2vec-clip.html).

## Build Docker container

```
LOCAL_REPO="multi2vec-clip" \
  OPEN_CLIP_MODEL_NAME="xlm-roberta-base-ViT-B-32" \
  OPEN_CLIP_PRETRAINED="laion5b_s13b_b90k" \
  ./cicd/build.sh

```

## Run tests

```
LOCAL_REPO="multi2vec-clip" ./cicd/test.sh
```
