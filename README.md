## Description
Repository for reproducing the Hasura error.
Remote schema customize type prefix error occur when use enum as an argument.

## Requirement

Hasura CLI Version: v2.7.0

## Setup

```
make init
```

## How to reproduce the error

Query
```graphql
query sample($order_by: [spacex_users_order_by!]!) {
  spacex {
    users(limit: 10, order_by: $order_by) {
      id
    }
  }
}
```

Variables
```json
{
  "order_by": {
    "id": "asc"
  }
}
```
