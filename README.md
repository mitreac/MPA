# Metabolic pathway analysis for Reactome pathways

**Overview:**
MPA is an R package and application that identifies perturbed metabolic pathways from high-throughput metabolite data. It leverages pathway information from the Reactome database to score and rank pathways based on how disrupted they are under experimental conditions.

### How It Works

1. **Input:** High-throughput metabolite levels for condition and control samples

2. **Score computation:** For each pathway, individual reaction perturbation scores are calculated using log₂ fold-change of condition vs. control metabolite levels. These are aggregated into an overall pathway perturbation score.

3. **Output:** Ranked list of Reactome pathways that perturbed in the condition under study – the rank is based on a score or p-value that results from evaluating the pathway disruption given the data and the pathway information from the Reactome database
