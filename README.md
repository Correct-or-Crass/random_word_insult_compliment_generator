## This API returns a random insult, compliment, or word

## Root directory
'https://shielded-headland-00998.herokuapp.com'

## API Endpoints
- 'GET  /api/v1/insults'

- Successful response:
```
{
  "data": {
      "id": "7",
      "type": "insult",
      "attributes": {
            "insult_phrase": "You have miles to go before you reach mediocre."
            }
      }
}
```
- 'GET  /api/v1/compliments'

- Successful response:
```
{
  "data": {
      "id": "12",
      "type": "compliment",
      "attributes": {
            "compliment_phrase": "You were cool way before hipsters were cool."
            }
        }
}
```
- 'GET  /api/v1/words'

- Successful response:
```
{
  "data": [
    {
      "id": "9",
      "type": "word",
      "attributes": {
            "word": "Hand"
      }
    }
  ]
}
```
- Word can accept an amount key to specify how many words are returned. If no amount is specified, one word will be returned

- 'GET  /api/v1/words', params { amount: 4 }

- Successful response: 
```
{
  "data": [
      {
        "id": "25",
        "type": "word",
         "attributes": {
              "word": "School"
        }           
      },
      {
        "id": "39",
        "type": "word",
        "attributes": {
              "word": "Dry"
        }
      },
      {
        "id": "7",
        "type": "word",
        "attributes": {
              "word": "Street"
        }
      },
      {
        "id": "28",
        "type": "word",
        "attributes": {
              "word": "Jazz"
        }
      }
   ]
}
