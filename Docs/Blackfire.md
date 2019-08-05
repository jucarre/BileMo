## Blackfire :

##### API test with Blackfire


Route: /api/login_check (I generate the token to do my tests)

Example:
` curl -X POST -H "Content-Type: application/json" -d '{  
    "username": "sfr",
    "password": "root"
}' "https://{hostname}/api/login_check" `

Route: /api/phones (20 ms gap)

Example:
`curl -X GET -H "Authorization: Bearer Votre_Token" -i -H "Accept: application/json" -H "Content-Type: application/json" "https://{hostname}/api/phones"`

Link no-cache: https://blackfire.io/profiles/6487611c-d591-44b8-b360-608b73563a97/graph

Link with-cache: https://blackfire.io/profiles/400ca112-0fde-4b6f-a45c-70e1e46da5af/graph

Route: POST /api/users (60ms gap)

Example:
`curl -X POST -H "Authorization: Bearer Votre_Token" -i -H "Content-Type: application/json" -d '{  
                                    "name": "nom_de_l_utilisateur",
                                    "client": "/api/clients/{id_clients}"
                                }' "https://{hostname}/api/users"`
                                

Link no-cache: https://blackfire.io/profiles/61af5f18-332a-4d0a-9d9a-092ec57a4c08/graph

Link with-cache: https://blackfire.io/profiles/d58f94ef-a542-4d3e-a19a-3d7f06ec1513/graph


