Sainsbury's Technical Test
--------------------------------------------------

Task
--------------------------------
a) Launch 3 separate linux nodes using the tool/distro of your choice
2 x application nodes
1 x web node

b) Using a configuration management tool (contractors MUST use Chef)

    i) Deploy the sample application to the application nodes
    ii) Install Nginx on the web node and balance requests to the application nodes in a round-robin fashion
    iii) Demonstrate the round-robin mechanism is working correctly
    
Goal
----------------------------
Sending a HTTP request to the web node should return the response

    Hi there, I'm served from <application node hostname>!

Considerations
-----------------------------
        i) Share your work on a public git repo
        ii) Include a README.md with clear and concise instructions
        iii) Invocation should be a one line command string
        iv) Take care not to over engineer a solution 



How To Run the Solution?
-----------------------------------------

    1) Install Vagrant and Virtual Box into your system.
    2) Clone this repository
    3) From repository root folder (i.e. sbtechnicaltest) execute the following command:
          vagrant up
    4) As per the vagrant file Nginx Webserver is running on http://172.28.128.5/. Hit the Ip and you will see the application nodes accessed in an round robin manner.
