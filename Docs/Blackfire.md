## Blackfire :

##### Test de l'api avec Blackfire

Route: /api 

Lien: https://blackfire.io/profiles/70cfd0be-a48b-454b-8117-49fd395f3f70/graph

Route: /api/login_check 

Exemple:
` curl -X POST -H "Content-Type: application/json" -d '{  
    "username": "sfr",
    "password": "root"
}' "https://{hostname}/api/login_check" `

Route: /api/phones

Exemple:
`curl -X GET -H "Authorization: Bearer Votre_Token" -i -H "Accept: application/json" -H "Content-Type: application/json" "https://{hostname}/api/phones"`

Lien: https://blackfire.io/profiles/b3f57e6a-37ca-42f8-a8ba-46a4156278e6/graph

Route: POST /api/users

Exemple:
`curl -X POST -H "Authorization: Bearer Votre_Token" -i -H "Content-Type: application/json" -d '{  
                                    "name": "nom_de_l_utilisateur",
                                    "client": "/api/clients/{id_clients}"
                                }' "https://{hostname}/api/users"`
                                
Lien: https://blackfire.io/profiles/109828c1-25fa-4a70-ab15-f79006d57cb9/graph    


