Hi Team Rearc!

I had some trouble initially deploying this to AWS ECS as my preffered vehicle so I deployed it as a container to EC2
After my submission and spent some time going over the initial frustrations and figured out where I went wrong. I was able to also deploy it to ECS after that.

I'm leaving both versions EC2 and ECS sites up for your validation. I mapped it to a personal subdomain:

==> # Here I have it running as a container on EC2                            https://rearc.jude-aws.com/                                       

==> # Here I have it running as a service but deployed via Amazon's ECS       https://rearc-lb-716-1086773472.us-east-1.elb.amazonaws.com/      

==> # You can check out my Dockerfile and others here                         https://github.com/jaar81/rearc/blob/rearc-container/

# Given More Time;
Several things would do 
First the service should be in a private subnet, behind the load balancer in the public subnet. In an enterprise environment this obviously would be manndatory



### INITIAL FRUSTRATION now fixed
I had submitted an initial version of this quest where i deployed to a container directly running on EC2, because i couldn't figure out the bug to successfully deploy via ECS..
Over the weekend I had sometime to ponder the issue and double checked my configurations. Turns out I forgot to allow all TCP from the from the Security Group of the ALB.
This allows us to use dynamically assigned ports from ECS and not having to configure a static port. 
Also allows us to have the container scalability that ECS offers and to have it all run as a service  

## This is sorely in need of a CICD Pipeline...

Either Jenkins or Code Deploy would suffice if I dedicated some more time

I'm actually in Greece right now to celebrate a brother's 40th but i literally worked all night (jetlag helped) till just 6am to make sure i don't delay any longer. Curious to get your feedback
It's rudimentary but I hope to have showcased my ability to find answers even when they aren't second nature :) 

## I have saved a skeleton of the terraform config file...

- I haven't debugged it but I can mmake it work if I were to spend time on it. I must admit I could have made terraform better but I honestly copied modules from random places and assembled it. I know what I need it to do.
- But there are opportunities to use more data sources and mapping the DNS and TLS certs dynamically so it's portable to other environments. 
- I also could look into creating workspaces for different envs 
If you insist by the way. I can complete the terraform in a couple of days when I return stateside. I'm happy to 
