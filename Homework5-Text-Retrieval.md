# Homework 5: Text Retrieval

## Objective

Using the collection of text documents **D**, rank the documents according to the similarity function discussed in class.

For this assignment, use **TF-IDF term weighting** for document vectors and **cosine similarity** to rank documents for each query. Use the query-term weighting method presented in class.

## Document Collection

| Document Identifier | Document Content |
|---|---|
| 1 | German culture began long before the rise of Germany as a nation-state and spanned the entire German-speaking world. |
| 2 | The university of Wisconsin parkside is located in Kenosha, Wisconsin. |
| 3 | Wisconsin sells cheese to other places in the world such as Germany. |
| 4 | My culture class deals with German culture |
| 5 | I have a lot of classes at the University of Wisconsin, but nothing about Wisconsin even though it is in Wisconsin. |

## Queries

For each query below, rank the five documents from most similar to least similar.

a. What is Wisconsin?

b. The country of Germany

c. cheeses of the world

## Instructions

1. Preprocess the document collection and queries consistently. State your tokenization, case-folding, and any other preprocessing choices.
2. Calculate term frequencies, document frequencies, IDF values, and TF-IDF document vectors.
3. Construct a query vector for each query using the same vocabulary and term order as the document vectors.
4. Compute cosine similarity between each query and all five documents.
5. Report the similarity scores and final document rankings for queries (a), (b), and (c). Show enough intermediate calculations to explain your results.

You may use Python to perform the calculations. If you do, include your code along with your results.

**Note:** This is a student assignment. No solutions or expected rankings are provided here.
