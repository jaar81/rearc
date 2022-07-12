I'm leaving the site up for your validation. I mapped it to a personal subdomain :

==>  https://rearc.jude-aws.com/
You can check out my Dockerfile Here ==> https://github.com/jaar81/rearc/blob/rearc-container/Dockerfile
I have the skeleton of my Terraform Files here. It's really quick and dirty. I largely copied it somewhere online but i can take some time polish it and make it usable. I've included it to show that I do know terraform and I can find the answers if needed

<img width="1974" alt="69A85274-525A-4ECD-BC6A-57A0556CF563" src="https://user-images.githubusercontent.com/52366166/178396044-201d49e9-f5e8-43e5-a949-977d3dfda8ec.png">


# Given More Time;
Several things would do 
First the service should be i a private subnet, behind the load balancer in the public subnet. This would require me to configure a NATGateway which is expensive. But in an enterprise environment this obviously would be manndatory

### I have saved a sample terraform form file...
I haven't debugged it but it should work if i were to spend time on it. I must admit i could have made terrafomr better but i honestly copied modules from random places and assembled it. I know what i need it to do. 
But there are opportunities to use more data sources and mapping the DNS and  TLS cert. 
I also could have looked into creating workspaces for different envs 

### I have to admit a frustrating failure.
For the life of me i couldn't figure out what I was doing wrong in failing to deploy this using ECS (EC2 Launch type) which would have solved many problems related to best practice implementation. 
Also, FARGATE which normally would be a breeze, was incompatible with the docker image or so it seemed. I gave up after a few days. I had really hoped to blow your collective minds with a terraform that would do everything from creating a bastion host to deploying a whole mini env pub/priv subnets, natgs, VPCs and all ... but alas... time wasn't my friend here, besides y'all are pretty hard to impressed based on some of the impressive technologies you're working on :)

**This is sorely in need of a CICD Pipeline...**  Either Jenkins or Code Deploy would suffice if I dedicated some more time

I'm actually in Greece right now to celebrate a brother's 40th but i literally worked all night till just now to make sure i don't deplay any longer. Really curious to get your feedback

It's rudimentary but i hope to have showcased my ability to find answers even when they aren't second nature :) 

If you insist by the way. I can complete the terraform in a couple of day when i return stateside. I'm happy to 
