# Algebra, Calculus, and Multivariable Calculus with Vulkan Profiles

Use it as a high-dimensional mathematical object, not just as raw JSON.

The file 49077.json, gives you three strong feature families: boolean capability flags under `capabilities.device.features`, numeric hardware limits under `capabilities.device.properties`, and sparse categorical tokens under `extensions` and `formats`. If you join that with catalog/spec data from gpu.json and optional benchmark labels from GPU_UserBenchmarks.csv, you can use algebra and calculus in a very direct way.

**Algebra**
Treat each GPU as a vector $x \in \mathbb{R}^n$.
Examples:
- Numeric fields: `subgroupSize`, `shaderSMCount`, `maxComputeSharedMemorySize`, `maxSamplerAnisotropy`
- Boolean fields: convert `true/false` to $1/0$
- Extension support: one-hot or count encoding
- Vendor/driver/platform: categorical encoding

Then you can do:
- Similarity: cosine similarity or Euclidean distance between GPUs
- Matrix analysis: build a GPU-by-feature matrix $X$ and study rank, sparsity, correlations
- Linear models: predict a label with $y = X\beta + \epsilon$
- Clustering: group GPUs by algebraic distance in feature space
- Dimensionality reduction: PCA/SVD on $X$ to find the main latent capability axes

Example questions:
- Which Vulkan features move together algebraically?
- Are NVIDIA/AMD/Apple separated mostly by extensions, limits, or both?
- Can one linear combination of Vulkan properties explain benchmark rank?

**Calculus**
Calculus becomes most useful once you add a target, such as benchmark score, power draw, price, or latency. Then you define a function like
$$
f(x) = \text{predicted performance}
$$
and study how it changes.

Useful applications:
- Optimization: fit regression or neural models by minimizing a loss
$$
L(\theta) = \sum_i (\hat y_i - y_i)^2
$$
- Marginal effect analysis: if you model score as a function of one engineered variable, the derivative $f'(x)$ tells you how much score changes per unit increase
- Curve fitting: explore non-linear effects such as diminishing returns from memory size, extension count, or compute limits

Example:
- Create a scalar feature like
$$
z = \log(1 + \text{maxComputeSharedMemorySize})
$$
and fit score as $f(z)$
- Then inspect $f'(z)$ to see whether more shared memory still helps or has flattened out

With Vulkan-only JSON, calculus is good for learning capability-to-label mappings. Without labels, it is less about prediction and more about smooth embeddings or density estimation.

**Multivariable Calculus**
This dataset is naturally multivariable, so this is where it becomes most interesting.

You can define
$$
f(x_1, x_2, \dots, x_n)
$$
where each $x_j$ is a GPU feature. Then:
- Gradient $\nabla f$: tells you which features most increase predicted score locally
- Hessian $H_f$: tells you curvature and interaction effects
- Constrained optimization: maximize performance under budget, power, or compatibility constraints

Example formulations:
- Performance model:
$$
f(\text{SM count}, \text{shared memory}, \text{descriptor limits}, \text{extension count}, \dots)
$$
- Value optimization:
$$
\max_x \; \frac{f(x)}{\text{price}(x)}
$$
subject to
$$
\text{TDP}(x) \le P, \quad \text{VRAM}(x) \ge V
$$

This lets you answer:
- Which combination of Vulkan capabilities most strongly predicts benchmark rank?
- What is the tradeoff surface between capability richness, power, and price?
- Which features interact nonlinearly, for example ray tracing support plus subgroup properties?

A practical workflow would be:
1. Flatten 49077.json-style files into one row per report.
2. Keep numeric limits as numeric, booleans as binary, extensions/formats as sparse indicators or counts.
3. Join with gpu.json for hardware specs and GPU_UserBenchmarks.csv for labels.
4. Use algebra first: normalization, correlation matrix, PCA, clustering.
5. Then use calculus: regression loss minimization, gradient-based models, marginal-effect analysis.
6. Then use multivariable calculus: sensitivity analysis, constrained optimization, interaction terms.

If you want a stronger math project, these are the three best directions:
1. Capability manifold: embed GPUs into 2D or 3D from Vulkan features and study geometry/clusters.
2. Performance surface: predict benchmark score from Vulkan + spec features and analyze gradients.
3. Optimal GPU selection: formulate a constrained optimization problem using score, price, power, and feature support.

**1. Feature Plan**

Start by treating each Vulkan profile JSON like 49077.json as one observation at the report level, not the GPU-model level. That matters because the same GPU can appear under different drivers, OS versions, and platforms, and those are useful explanatory variables.

A practical feature-engineering plan is:

1. Identity features:
   Extract `label`, `api-version`, `driverName`, `driverInfo`, vendor ID, OS/platform text, and the profile key under `profiles`.
2. Boolean capability features:
   Flatten every boolean under `capabilities.device.features.*` into binary columns.
   Example columns: `feat_VkPhysicalDeviceFeatures_geometryShader`, `feat_VkPhysicalDeviceVulkan12Features_descriptorIndexing`, `feat_VkPhysicalDeviceRayQueryFeaturesKHR_rayQuery`.
3. Numeric property features:
   Flatten all scalar numeric values under `capabilities.device.properties.*`.
   Example columns: `prop_limits_maxComputeSharedMemorySize`, `prop_VkPhysicalDeviceShaderSMBuiltinsPropertiesNV_shaderSMCount`, `prop_VkPhysicalDeviceVulkan13Properties_maxBufferSize`.
4. Count features:
   Derive summary counts such as:
   - total enabled boolean features
   - total extensions
   - total formats
   - total queue families
   - total ray-tracing-related extensions
   - total mesh-shader-related features
5. Sparse categorical features:
   For extensions and formats, create either:
   - binary indicators for the top $k$ most common tokens
   - aggregated counts by family, such as `ext_count_KHR`, `ext_count_EXT`, `ext_count_NV`
6. Array-derived numeric features:
   Convert arrays into statistics rather than raw arrays.
   Example:
   - length of `subgroupSupportedStages`
   - max/min of `maxComputeWorkGroupSize`
   - count of supported sample counts
7. Cross-source join features:
   Join each Vulkan report to spec records in gpu.json and labels from GPU_UserBenchmarks.csv.
   Useful joins:
   - normalized GPU model name
   - vendor
   - approximate architecture family
8. Algebra/calculus-ready normalization:
   - z-score continuous features
   - log-transform very large limits, for example $x' = \log(1+x)$
   - keep booleans as $0/1$
   - remove constant columns
   - collapse highly duplicated columns

Useful engineered aggregates from this file specifically:
- ray tracing score: sum of ray tracing related booleans and extensions
- shader flexibility score: subgroup, descriptor indexing, dynamic rendering, shader object, mesh shader support
- memory/system scale score: derived from limits like buffer size, shared memory, descriptor ranges
- format richness score: number of formats with non-empty feature support
- extension richness score: total extensions plus family-specific counts

**2. Research Questions**

These fit algebra, calculus, and multivariable calculus naturally.

1. Which linear subspaces best explain GPU capability variation across vendors?
   Use PCA/SVD on the flattened matrix and study whether the first few principal components separate NVIDIA, AMD, Apple, and Intel.
2. Can Vulkan capability vectors predict external benchmark rank?
   Model benchmark score $y$ from Vulkan feature vector $x$ with
   $$
   y \approx f(x)
   $$
   using linear regression, ridge regression, gradient boosting, or neural nets.
3. Which marginal capability changes matter most for performance?
   After fitting $f(x)$, inspect partial derivatives
   $$
   \frac{\partial f}{\partial x_i}
   $$
   to estimate which features or limits have the largest local effect.
4. Is there a diminishing-return curve for feature richness?
   Let $z$ be the count of enabled advanced features or extensions and fit
   $$
   y = f(z)
   $$
   then inspect whether $f'(z)$ decreases.
5. How do driver and OS alter the same GPU’s capability surface?
   For the same normalized GPU model, compare reports across driver versions and platforms as local perturbations in feature space.
6. Can GPUs be clustered into “capability manifolds” independent of brand?
   Use distance-based clustering and manifold learning to see whether cards group by actual Vulkan behavior rather than marketing family.
7. Which interactions matter most?
   Estimate whether pairs such as ray tracing plus subgroup support or mesh shader plus descriptor buffer have non-additive effects:
   $$
   f(x_i, x_j) \neq f_i(x_i) + f_j(x_j)
   $$
8. Can you optimize for best value under constraints?
   Define
   $$
   \max_x \frac{\text{predicted performance}(x)}{\text{price}(x)}
   $$
   subject to power, memory, or feature constraints.
9. Can capability profiles predict compatibility classes rather than performance?
   Predict whether a GPU supports a class of workloads such as advanced rendering, scientific compute, or mobile portability.
10. How stable are the dominant algebraic directions over time?
    If you collect profiles over many dates and drivers, test whether the leading eigenvectors of the covariance matrix drift.

Thesis-level versions of these:
- “Geometric Structure of Vulkan Capability Space Across Consumer GPUs”
- “Sensitivity Analysis of GPU Performance Using Vulkan Profile Features”
- “Constraint-Aware Optimization of GPU Selection from Capability Manifolds”

**3. Flattened Schema**

Use one wide row per report. Keep three layers: identity, flattened features/properties, and derived aggregates.

Recommended schema:

```text
report_id
profile_key
gpu_name
vendor_name
vendor_id
driver_name
driver_info
api_version
os_name
platform_name
architecture
report_date

feat__VkPhysicalDeviceFeatures__geometryShader
feat__VkPhysicalDeviceFeatures__samplerAnisotropy
feat__VkPhysicalDeviceVulkan12Features__descriptorIndexing
feat__VkPhysicalDeviceVulkan13Features__dynamicRendering
feat__VkPhysicalDeviceRayQueryFeaturesKHR__rayQuery
feat__VkPhysicalDeviceMeshShaderFeaturesEXT__meshShader
...

prop__VkPhysicalDeviceProperties__limits__maxComputeSharedMemorySize
prop__VkPhysicalDeviceProperties__limits__maxSamplerAnisotropy
prop__VkPhysicalDeviceProperties__limits__maxImageDimension2D
prop__VkPhysicalDeviceVulkan11Properties__subgroupSize
prop__VkPhysicalDeviceShaderSMBuiltinsPropertiesNV__shaderSMCount
prop__VkPhysicalDeviceVulkan13Properties__maxBufferSize
...

agg__feature_true_count
agg__extension_count
agg__format_count
agg__queue_family_count
agg__raytracing_feature_count
agg__meshshader_feature_count
agg__descriptor_feature_count
agg__memory_limit_logsum
agg__format_support_nonempty_count

ext__VK_KHR_swapchain
ext__VK_KHR_ray_query
ext__VK_EXT_mesh_shader
ext__VK_NV_ray_tracing
...

fmt__VK_FORMAT_R8G8B8A8_UNORM
fmt__VK_FORMAT_D32_SFLOAT
...
```

For matrix use by method:

1. PCA and clustering:
   Use numeric properties, booleans, aggregate counts, and optionally top-$k$ extensions.
2. Regression:
   Same as PCA plus joined spec data and target columns such as benchmark score, price, or TDP.
3. Optimization:
   Keep interpretable columns only.
   Good examples:
   - `price_usd`
   - `tdp_watts`
   - `vram_gb`
   - `raytracing_feature_count`
   - `shaderSMCount`
   - `maxComputeSharedMemorySize`
   - `extension_count`

A good flattening rule is:

- Booleans become $0/1$
- Integers/floats stay numeric
- Arrays become counts, mins, maxes, or lengths
- Nested token maps like `extensions` become sparse binary or count columns
- Extremely sparse raw format columns should be trimmed to top-$k$ or replaced with grouped aggregates

A compact relational design before producing the final matrix would be:

1. `vulkan_report`
   One row per JSON file with identity metadata.
2. `vulkan_feature_bool`
   `report_id`, `feature_path`, `value`
3. `vulkan_property_num`
   `report_id`, `property_path`, `numeric_value`
4. `vulkan_extension`
   `report_id`, `extension_name`, `version`
5. `vulkan_format`
   `report_id`, `format_name`, `has_linear`, `has_optimal`, `has_buffer`
6. `gpu_label`
   Joined benchmark/spec/price data from other sources

Then materialize a final ML matrix from those tables.

# Graph theory

The best graph candidates are 49077.json and the other files in data/pc-hardware/vulkan-profiles. That JSON has a natural heterogeneous graph shape: one GPU profile node linked to feature nodes, extension nodes, format nodes, driver nodes, vendor nodes, and OS nodes. From that you can build:
- A bipartite graph: GPU report $\leftrightarrow$ supported Vulkan feature
- A projected similarity graph: GPU $\leftrightarrow$ GPU with edge weight based on shared capabilities, for example Jaccard similarity
- A temporal or version graph: driver version $\to$ capability changes across submissions

That supports community detection, centrality, clique finding, spectral clustering, graph embeddings, and link prediction. If your goal is “which GPUs are architecturally similar?” or “which feature clusters tend to appear together?”, this is the cleanest dataset for it.

gpu.json also works well, even though it is more table-like. Each top-level object is a GPU entry with attributes such as vendor, code name, bus interface, memory type, API support, launch date, and performance-related fields. You can turn it into:
- A knowledge graph: GPU model $\to$ vendor, code name, bus, memory type, API support
- A similarity graph: GPU $\leftrightarrow$ GPU based on closeness in clock, bandwidth, transistor count, or release era
- A lineage-style graph: code name families and vendor generations over time

This is useful for graph-based clustering, nearest-neighbor search, and studying how architectural families evolve.

The UserBenchmark CSVs such as GPU_UserBenchmarks.csv, CPU_UserBenchmarks.csv, and SSD_UserBenchmarks.csv can also be used, but you need to construct the relationships yourself because they are flat rows. Good graph constructions are:
- Bipartite graph: brand $\leftrightarrow$ model
- Bipartite graph: model $\leftrightarrow$ benchmark rank bucket
- Similarity graph: model $\leftrightarrow$ model if benchmark, rank, and sample count are close
- Category graph: type $\leftrightarrow$ brand $\leftrightarrow$ model

One caution: the `URL` field is not a clean node identifier because multiple rows can share the same URL, especially OEM variants in the GPU and SSD files, so it is better used as metadata than as the graph key.

So the short answer is:
- Best for graph theory: Vulkan profile JSONs
- Also strong: gpu.json
- Usable but more engineered: UserBenchmark CSVs

If you want a practical starting point, I would build this first graph:

$$
G = (V, E)
$$

where:
- $V = \{\text{GPU reports}\} \cup \{\text{Vulkan features}\}$
- $E = \{(\text{gpu}, \text{feature}) \mid \text{gpu supports feature}\}$

Then project it to a GPU-GPU graph with edge weight

$$
w(i, j) = \frac{|F_i \cap F_j|}{|F_i \cup F_j|}
$$

where $F_i$ is the feature set of GPU $i$. That gives you a defensible similarity network immediately.

**2. NetworkX**
A good first graph is a bipartite graph between GPU reports and enabled Vulkan features. Each report node connects to every boolean feature that is `true`.

```python
import json
from pathlib import Path
import networkx as nx

profile_path = Path("data/pc-hardware/vulkan-profiles/49077.json")

with profile_path.open() as f:
    data = json.load(f)

# Get the single profile key and some metadata
profile_key = next(iter(data["profiles"]))
profile_meta = data["profiles"][profile_key]

G = nx.Graph()

gpu_node = f"gpu::{profile_key}"
G.add_node(
    gpu_node,
    kind="gpu_report",
    label=profile_meta.get("label"),
    api_version=profile_meta.get("api-version"),
)

features = data["capabilities"]["device"]["features"]

for feature_group, feature_map in features.items():
    for feature_name, value in feature_map.items():
        if value is True:
            feat_node = f"feature::{feature_group}::{feature_name}"
            G.add_node(
                feat_node,
                kind="vulkan_feature",
                feature_group=feature_group,
                feature_name=feature_name,
            )
            G.add_edge(gpu_node, feat_node, relation="supports")

print(nx.info(G))
print("GPU node:", gpu_node)
print("Neighbors:", list(G.neighbors(gpu_node))[:10])
```

That creates the smallest defensible graph from one file. The next step is to do it for all JSON files in data/pc-hardware/vulkan-profiles and then project the bipartite graph into a GPU-to-GPU similarity graph.

```python
import json
from pathlib import Path
from collections import defaultdict
import networkx as nx

profiles_dir = Path("data/pc-hardware/vulkan-profiles")

B = nx.Graph()
gpu_features = defaultdict(set)

for path in profiles_dir.glob("*.json"):
    with path.open() as f:
        data = json.load(f)

    profile_key = next(iter(data["profiles"]))
    gpu_node = f"gpu::{path.stem}"

    meta = data["profiles"][profile_key]
    B.add_node(
        gpu_node,
        kind="gpu_report",
        report_id=path.stem,
        profile_key=profile_key,
        label=meta.get("label"),
        api_version=meta.get("api-version"),
    )

    feature_groups = data.get("capabilities", {}).get("device", {}).get("features", {})
    for group_name, group_values in feature_groups.items():
        for feature_name, value in group_values.items():
            if value is True:
                feat_node = f"feature::{group_name}::{feature_name}"
                B.add_node(
                    feat_node,
                    kind="vulkan_feature",
                    feature_group=group_name,
                    feature_name=feature_name,
                )
                B.add_edge(gpu_node, feat_node, relation="supports")
                gpu_features[gpu_node].add(feat_node)

print("Bipartite nodes:", B.number_of_nodes())
print("Bipartite edges:", B.number_of_edges())

# GPU-GPU projected similarity graph using Jaccard similarity
S = nx.Graph()
gpu_nodes = list(gpu_features.keys())

for i, left in enumerate(gpu_nodes):
    S.add_node(left, **B.nodes[left])
    for right in gpu_nodes[i + 1 :]:
        left_feats = gpu_features[left]
        right_feats = gpu_features[right]
        union = left_feats | right_feats
        if not union:
            continue
        score = len(left_feats & right_feats) / len(union)
        if score > 0.5:
            S.add_edge(left, right, weight=score)

print("Similarity graph nodes:", S.number_of_nodes())
print("Similarity graph edges:", S.number_of_edges())
```

If you want a richer heterogeneous graph, add extensions, formats, vendor, driver, and OS as separate node types:

- `gpu_report -> feature`
- `gpu_report -> extension`
- `gpu_report -> format`
- `gpu_report -> driver`
- `gpu_report -> os`
- `gpu_report -> vendor`

That gives you one graph for both graph analytics and downstream ML.

You can also use data/pc-hardware/gpu.json in NetworkX as a knowledge graph:

```python
import json
from pathlib import Path
import networkx as nx

gpu_catalog_path = Path("data/pc-hardware/gpu.json")

with gpu_catalog_path.open() as f:
    catalog = json.load(f)

G = nx.Graph()

for gpu_id, row in catalog.items():
    gpu_node = f"gpu::{gpu_id}"
    G.add_node(gpu_node, kind="gpu_model", model=row.get("Model"))

    for field in ["Vendor", "Code name", "Bus Interface", "Memory Bus Type"]:
        value = row.get(field)
        if value and value != "nan":
            attr_node = f"{field}::{value}"
            G.add_node(attr_node, kind=field.lower().replace(" ", "_"), value=value)
            G.add_edge(gpu_node, attr_node, relation=field.lower().replace(" ", "_"))

print("Knowledge graph nodes:", G.number_of_nodes())
print("Knowledge graph edges:", G.number_of_edges())
```

If you want graph ML later, keep your node IDs stable from the start:
- GPU report node: `gpu::<report_id>`
- Feature node: `feature::<group>::<name>`
- Extension node: `ext::<name>`
- Format node: `fmt::<name>`
- Driver node: `driver::<driver_name>`
- Vendor node: `vendor::<vendor_name>`

# Graph-Based ML Tasks
These are the strongest tasks for your files.

1. GPU similarity clustering  
Build a GPU-GPU graph from shared Vulkan features and run community detection or spectral clustering. This tells you whether hardware groups by actual capability rather than brand label.

2. Node embedding for downstream prediction  
Learn embeddings from the graph with methods such as Node2Vec on the projected GPU graph, then use those embeddings to predict benchmark score, hardware family, or support tier.

3. Link prediction  
On the bipartite graph `GPU report <-> Vulkan feature`, hide a subset of edges and predict them. This becomes a capability-completion task: “given the rest of a device profile, what features is it likely to support?”

4. Node classification  
Label GPU nodes with vendor, architecture family, benchmark tier, or workload class, then train a classifier using graph-derived features or embeddings.

5. Anomaly detection  
Find reports that are structurally unusual, such as a GPU that lacks common features for its apparent class or has an unexpected extension/driver pattern. This is useful for bad exports, odd drivers, or compatibility edge cases.

6. Temporal drift analysis  
If you collect repeated reports for the same GPU across drivers or OS versions, create a temporal graph and measure how the neighborhood of that GPU changes. That gives you driver-induced capability drift.

7. Feature co-occurrence mining  
Project the bipartite graph onto feature nodes instead of GPU nodes. Then two features are connected when they co-occur on many devices. This helps identify capability bundles such as descriptor-indexing-related or ray-tracing-related clusters.

8. Recommendation or constraint matching  
Treat workload requirements as a set of needed feature nodes and match them to GPU nodes in the graph. This becomes a graph-based compatibility search problem rather than just a flat filter.

9. Multi-source graph learning  
Join Vulkan profiles with data/pc-hardware/gpu.json and UserBenchmark CSVs like data/pc-hardware/GPU_UserBenchmarks.csv. Then predict benchmark tiers from a graph that mixes specs, Vulkan capabilities, and vendor/model relations.

10. Graph regression  
Use graph-derived features such as degree, clustering coefficient, centrality, community ID, or learned embeddings as predictors for a scalar target like benchmark score or rank.

For your dataset, I would rank them like this:
- Best first project: GPU similarity clustering from Vulkan feature graphs
- Best ML project: graph embeddings plus benchmark prediction
- Best research-style project: temporal drift and feature co-occurrence networks

A practical sequence is:
1. Build the bipartite NetworkX graph from data/pc-hardware/vulkan-profiles
2. Project to a GPU similarity graph with Jaccard weights
3. Compute embeddings or centrality features
4. Join labels from data/pc-hardware/GPU_UserBenchmarks.csv
5. Train a classifier or regressor
