# Long running Lambda
This repository servers as a small example of the [Long Runing Lambda](https://docs.google.com/presentation/d/1fYaAwlUGb0MA3Z-zBL1Hmj76REKnMxlleEzp6_ffFwg/edit?usp=sharing) talk I gave at AWS Community Day Midwest.

### Initial setup
1. Install AWS CLI - `pip install awscli`
2. Clone this repository - `git clone https://github.com/jjshoe/LongRunningLambda.git`
3. Change into the repository - `cd LongRunningLambda`
3. Run the cloudformation, feel free to change the Name parameter, VpcCidr parameter, and stackname to whatever suits you - `aws cloudformation deploy --template cloudformation.yml --stack-name LongRunningLambda --capabilities CAPABILITY_IAM --parameter-overrides VpcCidr=10.121.0.0/16 Name=LongRunningLambda`

### Running
1. Sign into your AWS web console
2. From the `Services` drop down, search for and select `Lambda`
3. Click on the function name, it will match what you passed in for a name parameter in step 3
4. On the upper right side will be a drop down with grey text that says `Select a test event..`, click on it
5. Select `Configure test events` in the drop down
6. In the `Event name` input, type `test`
7. Click the orange button on bottom labeled `Create`

### Monitoring
1. Sign into your AWS web console
2. From the `Services` drop down, search for and select `CloudWatch`
3. On the far left select `Logs`
4. Click `/aws/lambda/EcsTaskLauncher`
5. Click on any log entry that interests you
