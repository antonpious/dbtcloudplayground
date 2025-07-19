## Welcome to your dbt cloud project!

Download the cloud cli dbt profile file from the project and put it in   
`~/.dbt/dbt_cloud.yml`  

Note: Don't use uv. It is not working. Have to check  

Create a virtual environment  
`python3 -m venv .venv`  

Activate the virtual environment  
`source .venv/bin/activate`

Install cloud CLI
`pip install dbt --no-cache-dir`

Create an alias
`alias env_dbt='source <full path to project>/.venv/bin/activate'`  
in ~/.zshrc file  

Go to the dbt_project.yml and add the dbt cloud entry  
```
dbt-cloud:
    project-id: <cloud project id>
```  

Run dbt cloud
To compile  
`dbt compile  `

To run  
`dbt run`  



Useful Links:  
[Dbt cloud cli documentation](https://docs.getdbt.com/docs/cloud/cloud-cli-installation?install=pip#install-dbt-cloud-cli-in-pip)   

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
