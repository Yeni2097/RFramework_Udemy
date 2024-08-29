import json

val = '''{
    "_age": 35,
    "name": "Foster Cohen",
    "gender": "male",
    "company": "MICRONAUT",
    "email": "fostercohen@micronaut.com",
    "phone": "+1 (876) 535-3822"
  }'''
json_resultados=json.loads(val)

print(json_resultados)