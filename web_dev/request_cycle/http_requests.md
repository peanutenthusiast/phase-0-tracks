#What are some common HTTP status codes?
*100 Continue indicates that the client can continue with their request. If a 100 continue is received as response, the body can be sent.*
*417 Expectation Failed indicates that the server can't meet the requirements of the request.*
*306 Switch Proxy indicates that whatever proxy was requested is no longer used.*
*200 OK indicates that the request is a-go.*
*300 Multiple Choices indicates that there are choices that the client needs to choose.*

#What is the difference between a GET request and a POST request? When might each be used?
*GET request will retrieve data, while POST request will submit or insert data. A GET request would be used for *

#Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
*Cookies are files on a user's computer that store some data specific for a client and a website. Helpful for a website in remembering the history/preferences of a user. They are sent with every requests.*