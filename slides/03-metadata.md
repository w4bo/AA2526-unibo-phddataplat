# Metadata Challenges

Lacking smart support to govern the complexity of data and transformations

Data transformations must be governed to prevent DP turning into a swamp

* Amplified in data science, with data scientists prevailing data architects
* Leverage descriptive metadata and maintenance to keep control over data

# Metadata Challenges

Knowledge representation

* Which metadata must be captured
* How should metadata be organized

Knowledge exploitation

* Which features do metadata enable

# Which metadata must be captured? {background-color="#121011"}

# Which metadata must be captured?

A classification of metadata [@sharma2016architecting]

**Technical** metadata

* Capture the form and structure of each dataset
* E.g.: type of data (text, JSON, Avro); structure of the data (the fields and their types)

**Operational** metadata

* Capture lineage, quality, profile, and provenance of the data
* E.g.: source and target locations of data, size, number of records, and lineage

**Business** metadata

* Captures what it all means to the user
* E.g.: business names, descriptions, tags, quality, and masking rules for privacy

#

Another classification of metadata [@DBLP:conf/adbis/SawadogoSFFLD19]

**Intra-object** metadata

* _Properties_ provide a general description of an object in the form of key-value pairs
* _Summaries and previews_ provide an overview of the content or structure of an object
* _Semantic metadata_ are annotations that help understand the meaning of data

**Inter-object** metadata

* _Objects groupings_ organize objects into collections, each object being able to belong simultaneously to several collections
* _Similarity links_ reflect the strength of the similarity between two objects
* _Parenthood relationships_ reflect the fact that an object can be the result of joining several others

**Global** metadata

* _Semantic resources_, i.e., knowledge bases (ontologies, taxonomies, thesauri, dictionaries) used to generate other metadata and improve analyses
* _Indexes_, i.e., data structures that help find an object quickly
* _Logs_, used to track user interactions with the data lake

# Capturing the metadata

*Pull strategy*

  - The system actively collects new metadata
  - Requires scheduling: when does the system activate itself?
    - Event-based (CRUD)
    - Time-based
  - Requires wrappers: what does the system capture?
    - Based on data type and/or application
    - A comprehensive monitoring is practically unfeasible

*Push strategy*

- The system passively receives new metadata
- Requires an API layer
- Mandatory for operational metadata

:::{.fragment}
Still one of the main issues in data platforms!
:::

# How should metadata be organized? {background-color="#121011"}

# How should metadata be organized?

::::{.columns}
:::{.column width="50%"}

![[@DBLP:conf/adbis/SawadogoSFFLD19]](img/phdslides_154.png)

:::
:::{.column width="50%"}

*Semantic enrichment*

* Add contextual descriptions (e.g., tags) for easier interpretation.

*Data indexing*

* Use structures to retrieve datasets by characteristics like keywords.

*Link generation and conservation*

* Detect similarities or maintain links between datasets.

*Data polymorphism*

* Store multiple data versions to avoid repeated pre-processing.

*Data versioning*

* Track data changes while preserving previous states.

*Usage tracking*

* Record user interactions with the data.

:::
::::

#

::::{.columns}
:::{.column width="50%"}
![[@DBLP:conf/adbis/SawadogoSFFLD19]](img/phdslides_156.png)
:::
:::{.column width="50%"}
![Constance: [@DBLP:conf/sigmod/HaiGQ16]](img/phdslides_155.png)
:::
::::

Constance: [@DBLP:conf/sigmod/HaiGQ16]

- Few details given on metamodel and functionalities.
- No metadata collected on operations.

#

::::{.columns}
:::{.column width="50%"}
![[@DBLP:conf/adbis/SawadogoSFFLD19]](img/phdslides_157.png)
:::
:::{.column width="50%"}
![GEMMS: [@DBLP:conf/caise/QuixHV16]](img/phdslides_158.png)
:::
::::

GEMMS: [@DBLP:conf/caise/QuixHV16]

- No discussion about the functionalities provided.
- No metadata collected on operations and agents.

#

::::{.columns}
:::{.column width="50%"}
![[@DBLP:conf/adbis/SawadogoSFFLD19]](img/phdslides_160.png)
:::
:::{.column width="50%"}
![GOODS: [@DBLP:journals/debu/HalevyKNOPRW16]](img/phdslides_159.png)
:::
::::

GOODS: [@DBLP:journals/debu/HalevyKNOPRW16]

- Crawls Google's storage systems to extract basic metadata on datasets and their relationship with other datasets.
- Performs metadata inference (e.g., determine the schema of a dataset, trace the provenance of data, or annotate data with their semantics).
  - Strictly coupled with the Google platform.
  - Mainly focuses on object description and searches.
  - No formal description of the metamodel.

#

::::{.columns}
:::{.column width="50%"}
![](img/phdslides_161.png)
:::
:::{.column width="50%"}
![Ground: [@DBLP:conf/cidr/HellersteinSGSA17]](img/phdslides_162.png)
:::
::::

Ground: [@DBLP:conf/cidr/HellersteinSGSA17]

- *Version graphs* represent data versions.
- *Model graphs* represent application metadata, i.e., how data are interpreted for use.
- *Lineage graphs* capture usage information.
- Not enough details given to clarify which metadata are actually handled.
- Functionalities are described at a high level.

#

::::{.columns}
:::{.column width="50%"}
![[@DBLP:conf/adbis/SawadogoSFFLD19]](img/phdslides_163.png)
:::
:::{.column width="45%"}
![KAYAK: [@maccioni2018kayak]](img/phdslides_164.png)

![KAYAK: [@maccioni2018kayak]](img/phdslides_165.png)
:::
::::

KAYAK: [@maccioni2018kayak]

- Support users in creating and optimizing the data processing pipelines.
- Only goal-related metadata are collected.

# MOSES

::::{.columns}
:::{.column width="60%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/phdslides_166.png)
:::
:::{.column width="40%"}
Three areas:

- **Technical** (blue)
- **Operational** (green)
- **Business** (red)
:::
::::

#

::::{.columns}
:::{.column width="60%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/meta01.png)
:::
:::{.column width="40%"}
- Not pre-defined
- Domain-independent
- Extensible
:::
::::

#

::::{.columns}
:::{.column width="60%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/meta02.png)
:::
:::{.column width="40%"}
Tune the trade-off between the level of detail of the functionalities and the required computational effort
:::
::::

#

![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/meta03.png)

#

::::{.columns}
:::{.column width="60%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/phdslides_167.png)
:::
:::{.column width="40%"}

| Functionality           | Supported |
|-------------------------|-----------|
| Semantic enrichment     | Yes       |
| Data indexing           | No        |
| Link generation         | Yes       |
| Data polymorphism       | Yes       |
| Data versioning         | Yes       |
| Usage tracking          | Yes       |

:::
::::

# How would you implement the meta-model? {background-color="#121011"}

# The Property Graph Data Model

Back in the database community

* Meant to be queried and processed
* _THERE IS NO STANDARD!_

![R. Angles et al. Foundations of Modern Query Languages for Graph Databases](img/phdslides_172.png)

# Example of Property Graph

![Example of property graph](img/phdslides_175.png)

Formal definition:

![Formal definition of property graph](img/phdslides_176.png)

# Traversal Navigation

*Graph traversal*: "the ability to rapidly traverse structures to an arbitrary depth (e.g., tree structures, cyclic structures) and with an arbitrary path description"  [Marko Rodriguez]

Totally opposite to set theory (on which relational databases are based on)

* Sets of elements are operated by means of the relational algebra

# Object search

Discoverability is a key requirement for data platforms

* Simple searches to let users locate "known" information
* Data exploration to let users uncover "unknown" information
* Common goal: identification and description of Objects

Two levels of querying

* Metadata level (most important)
* Data level (can be coupled with the first one)

#

::::{.columns}
:::{.column width="50%"}
Return all objects of a given project


```cypher
MATCH (o:Object)-[]-(:Project {name:"ABC"})
RETURN o
```

Return small objects with a given name pattern in the landing area

```cypher
MATCH (o:Object)-[]-(d:DataLakeArea)
WHERE d.name = "Landing" AND o.name LIKE "2021_%"AND o.size < 100000
RETURN o
```

Schema-driven search: return objects that contain information referring to a given Domain

```cypher
MATCH (o:Object)-[]-(:Schema)-[]-(a:Attribute), (a)-[]-(:Domain {name: "FiscalCode"})
RETURN o
```

:::
:::{.column width="50%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/phdslides_197.png)
:::
::::

#

::::{.columns}
:::{.column width="50%"}
Provenance-driven search

```cypher
MATCH (obj1:Object)-[:readsFrom]-(o:Operation)-[:writesTo]-(obj2:Object)
CREATE (obj1)-[:ancestorOf]->(obj2)
```

Discover objects obtained from a given ancestor

```cypher
MATCH (:Object {id:123})-[:ancestorOf\*]-(obj:Object)
RETURN obj
```

Discover object(s) from which another has originated

```cypher
MATCH (obj:Object)-[:ancestorOf\*]-(:Object {id:123})
RETURN obj
```

Example: a ML team wants to use datasets that were publicized as _canonical _ for certain domains, but they find these datasets being too "groomed" for ML

* Provenance links can be used to browse upstream and identify the less-groomed datasets that were used to derive the canonical datasets

:::
:::{.column width="50%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/phdslides_197.png)
:::
::::

#

::::{.columns}
:::{.column width="50%"}
Similarity-driven search

Discover datasets to be merged in a certain query

```cypher
MATCH (:Object {id:123})-[r:similarTo]-(o:Object)
WHERE r.similarityType="affinity"
RETURN o
```

Discover datasets to be joined in a certain query

```cypher
MATCH (:Object {id:123})-[r:similarTo]-(o:Object)
WHERE r.similarityType="joinability"
RETURN o
```

Group similar objects and enrich the search results

- List the main objects from each group
- Restrict the search to the objects of a single group

:::
:::{.column width="50%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/phdslides_197.png)
:::
::::

#

::::{.columns}
:::{.column width="50%"}
Semantics-driven search

```cypher
MATCH (o:Object)-[:isDescribedBy]-(:OntologyTerm {uri:"http://..."})
RETURN o
```

Search objects without having any knowledge of theirphysical or intensional properties, but simply exploitingtheir traceability to a certain semantic concept

```cypher
MATCH (o:Object)-[\*]-(any), (any)-[:isDescribedBy]-(:OntologyTerm {uri:"http://..."})
RETURN o
```

:::
:::{.column width="50%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/phdslides_197.png)
:::
::::

#

::::{.columns}
:::{.column width="50%"}
Profiling

```cypher
MATCH (o:Object)-[]-(:OntologyType {name:"Table"}),
      (o)-[]-(s:Schema)-[]-(a:Attribute),
      (o)-[r:similarTo]-(o2:Object),
      (o)-[:ancestorOf]-(o3:Object),
      (o4:Object)-[:ancestorOf]-(o)
RETURN o, s, a, r, o2, o3, o4
```

* Shows an object's properties, list the relationships with other objects in terms of similarity and provenance
* Compute a representation of the intensional features that mostly characterize a group of objects(see slides on schema heterogeneity)

:::
:::{.column width="50%"}
![MOSES: [@DBLP:journals/fgcs/FranciaGGLRS21]](img/phdslides_197.png)
:::
::::

# References