
# **SAE Token Prediction and Latent Interpretation Project**

## **Overview**
This project explores the predictive capabilities of Self-Attention Embeddings (SAE) derived from the Gemma2-2B transformer model. The study focuses on whether SAE can be used to predict or forecast future tokens and how these embeddings vary across different layers of the model. Additionally, the project investigates the interpretability of latent representations within SAE to understand how they map to specific tokens.

[google_doc](https://docs.google.com/document/d/1rPW4Oya92TiiVqN7dyxrg-ZPkF9Okh9IKVOn43Ksqlg/edit?usp=sharing)

## **Experiments**
1. **Token Embedding Consistency Across Layers**:
   - Analyzed token embeddings across different layers of the transformer model.
   - Evaluated how each layer captures different aspects of a token's meaning.

2. **Predictive Capability of SAE**:
   - Investigated whether SAE can predict future tokens using cosine distance between token embeddings in direct and evasive answers.

3. **Latent Representation Interpretation**:
   - Reconstructed data maps to interpret latent variables within SAE and their relationship to specific tokens.

## **Key Findings**
- Token embeddings vary significantly across layers, indicating that each layer reflects different semantic dimensions.
- SAE shows potential in predicting future tokens, with measurable differences in cosine distance between direct and evasive answers.
- Latent representations are complex and distributed, with maximum activation values not always directly corresponding to the target token.

## **How to Run**
1. Have fun with docker!!!
   ```bash
   make run_docker
   ```
2. **Prepare data**:
   ```bash
   git clone https://github.com/Hunter-DDM/knowledge-neurons.git
   ```
3. Prepare necessary models:

   3.0. Make sure that git lfs system is installed
   ```bash 
   git lfs install
   ```
   3.1 clone MLP layers  
   ```bash
   GIT_LFS_SKIP_SMUDGE=1 git clone https://huggingface.co/google/gemma-scope-2b-pt-mlp
   ```
   3.2
   ```bash
   cp Makefile ./gemma-scope-2b-pt-mlp && cd gemma-scope-2b-pt-mlp && make git_download
   ```
4. **Run experiments**: Use `Gemma_Scope.ipynb` to reproduce the experiments.
5. **Enjoy**)

## **Future Work**
- Refine the methodology for using SAE in token prediction.
- Further explore the interpretability of latent representations across different layers.

## **Contributing**
Contributions are welcome! Please submit a pull request or open an issue for any suggestions or improvements.

## **License**
This project is licensed under the MIT License.
