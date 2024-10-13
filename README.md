# Portfolio

![Hugo](https://img.shields.io/badge/Hugo-blue.svg) 
![GitHub Actions](https://img.shields.io/badge/Build%20Status-Passing-brightgreen.svg)
![License](https://img.shields.io/badge/License-MIT-yellow.svg)
![AWS](https://img.shields.io/badge/AWS-Active-orange.svg)
![GitHub Repo Size](https://img.shields.io/github/repo-size/c0lap5o/portfolio.svg)


Welcome to my [portfolio](https://c0lap5o.dev)! This site is built using the [Toha theme](https://github.com/hugo-toha/toha) for Hugo, a fast and flexible static site generator. Hugo allows for rapid website development, enabling me to create a visually appealing and user-friendly portfolio with ease.

This portfolio is deployed on AWS (Amazon Web Services) using GitHub Actions, ensuring efficient content management and seamless visitor experience.

## Usage

To get started with Hugo and the Toha theme, you can refer to the official documentation:

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Toha Theme Documentation](https://github.com/hugo-toha/toha)

For installation instructions and setup, please follow the guidelines provided in the documentation.
You can deploy your website however you want; there are simpler choices that do not require a lot of configuration and others that do, so just pick your poison.

## Deploying the Hugo Site

This portfolio is deployed using AWS services and GitHub Actions. Here's an overview of the deployment process:

### 1. Setting up the S3 Bucket

- Created an S3 bucket with public access turned off.
- Enabled static website hosting for the bucket.

### 2. SSL Certificate Setup

- Created an SSL certificate using AWS Certificate Manager.
- Validated the certificate with DNS provider.

### 3. Creating a GitHub Actions User

- Set up an IAM user specifically for GitHub Actions.
- Created appropriate policies to allow this user to upload content to the S3 bucket.

### 4. Configuring CloudFront Distribution

- Created a CloudFront distribution to serve the website.
- Set up Origin Access Identity (OAI) for the distribution.
- Granted the CloudFront distribution access to the S3 bucket.
- Attached the SSL certificate to the CloudFront distribution.
- Configured CloudFront to redirect all HTTP requests to HTTPS.

### 5. Lambda@Edge Function

- Created a Lambda@Edge function to modify request URIs.
- This function adds `index.html` to the end of URIs when necessary.

Here's the code snippet used for the Lambda@Edge function:

```javascript
function handler(event) {
    var request = event.request;
    var uri = request.uri;
    
    // Check whether the URI is missing a file name.
    if (uri.endsWith('/')) {
        request.uri += 'index.html';
    } 
    // Check whether the URI is missing a file extension.
    else if (!uri.includes('.')) {
        request.uri += '/index.html';
    }

    return request;
}
```
This code is adapted from [coolapso's terraform-aws-cloudfront-and-edge repository](https://github.com/coolapso/terraform-aws-cloudfront-and-edge/blob/main/lambda/noindex.js). Note that they use Terraform to accomplish similar infrastructure setup, which is another excellent automated approach for managing AWS resources.

### 6. DNS Configuration

- Updated our domain's DNS settings to point to the CloudFront distribution.
- Added records in the domain provider for routing the root domain and www.rootdomain to the CloudFront domain.

### 7. GitHub Actions Workflow

- Set up a GitHub Actions workflow to automate the deployment process.
- This workflow installs dependencies, builds the Hugo site, and pushes the content to our AWS infrastructure.
- Don't add secrets in plain text.

### Additional Considerations

- **Logging**: AWS provides various logging options that can be set up according to specific needs and preferences.
- **Error Handling**: Basic error handling is configured through CloudFront.

## Conclusion

This deployment setup provides a robust, scalable, and secure hosting solution for Hugo-based portfolio website. By leveraging AWS services like S3, CloudFront, and Lambda@Edge, we've created a high-performance static site with global content delivery. The use of GitHub Actions automates our deployment process, making it easy to update and maintain the site.

While this setup requires more initial configuration compared to simpler hosting solutions, it offers greater control, scalability, and performance benefits. It's an excellent choice for those looking to gain hands-on experience with AWS services or needing the advanced features these services provide.

Remember, there are many ways to deploy a static site, and this is just one approach. Always consider your specific needs, budget, and technical expertise when choosing a deployment strategy.

For those interested in infrastructure as code, exploring tools like Terraform (as used in the referenced GitHub repository) can provide additional benefits in managing and versioning your infrastructure setup.

Happy coding and deploying!


