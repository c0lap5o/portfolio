---
title: "My New Cloud Application Journey"
date: 2024-12-02T14:00:25+00:00
url: "/posts/newproject/"
description: Building a Cloud Application with Java and Spring Boot
menu:
  sidebar:
    name: New Cloud Application
    identifier: newcloudapplication
    weight: 10
tags: [new, life, java, springboot]
---
## Back to Blogging – And Building Big Things 🚀

Hey everyone! It’s been a long while since my last (and, yeah, *first-ever*) post. Turns out, writing blog posts takes a back seat when you’re knee-deep in learning, coding, and wrestling with life. But hey, I’m back now, and I’ve got a lot to share! Spoiler alert: this post is packed with **Java**, **Spring Boot**, personal struggles, job-hunt woes, and the journey of building something cool from scratch. So buckle up!

### My New Project: A Cloud App ☁️

I’ve started working on a new **Java REST application**, and it’s been such an exciting experience! Think of Google Drive or Nextcloud — my project’s goal is to build a cloud platform similar to these two, where you can manage files, organize groups, sync folders, and even edit documents directly in your browser. **Ambitious? Definitely. Fun? 100%.**

Since I was in school taking my first steps into tech (excluding that one time I ruined a hard drive with a magnet as a kid), I’ve been fascinated by "The Cloud." The ability to sync files and access them from anywhere blew my mind. Now that I’ve learned how to program, I thought it would be pretty cool to make my **own cloud platform**, just for fun. It’s something that would be handy, plus I can customize it with features I want.

Breaking this project into smaller pieces has been the key to keeping my sanity. I’ve been using **agile methodology** to break problems down into simpler steps, working from easy to complex. That approach has been a **lifesaver**, letting me focus on one piece at a time without getting overwhelmed by the big picture.

I had to learn **Spring Boot** and **Spring Security** to develop the application. I spent long hours watching YouTube videos trying to understand Spring Security’s modules. On top of that, I wrestled with questions like: *What’s the right architecture? Is this code clean? Am I doing it right?* Here’s what I’ve learned: **it doesn’t really matter** at the start. There are a thousand ways to achieve the same goal, and you can’t do everything perfectly right away. Once I embraced the agile mindset, things started flowing.

### Managing the Chaos with Jira

To keep things organized, I’ve been using **Jira**. And let me just say: **Kanban > Scrum**. I get that Scrum is great for big teams, but for solo projects like this? I don’t need sprints or daily stand-ups with myself (I tried... and let me tell you it didn't have much effect). Kanban’s flexibility fits my flow better, and it keeps me motivated to move tasks across the board at my own pace. I figured that daily meetings with myself would be kind of pointless—like, who am I informing, *me*? So instead, I take a few minutes every morning to plan what I’ll work on that day. Simple goals, like “finish feature X” or “study Y,” keep me focused without overcomplicating things.

### A Tale of Two Programs

To make things easier, I split the app into three main backend parts:
1. **JWT Authentication**: Handles login, signup, and token management.
2. **File Management**: Where the uploading, downloading, and syncing magic happens.
3. **Authorization**: Manage who can access what resources and accounts like admins and moderators

This separation was a **game-changer**. It made the development process much more manageable, letting me focus on one major problem at a time. Right now, the app can handle **user authentication** and **basic file uploads/downloads**. It’s a solid start, and I’m excited for what’s next! I’m already seeing the **file management module** growing more complex as I add features, so I’ll probably break it down into smaller parts too. You don’t always get it perfect the first time—sometimes you need to tune things as you go. Also, the project is divided into 2 completly separate projects and then a glorious **MERGE** will occur where all pieces will fit together perfectly and make a simple cloud application.

### TDD: The Rollercoaster Ride 🎢

I set out with big dreams of **Test-Driven Development (TDD)**. Write the tests first, let them guide the code, and watch everything magically fall into place, right? **Well… not quite.** 😅 At first, I kept rewriting tests because I wasn’t entirely sure how to structure the app. It slowed me down **a lot**, and eventually, I decided to reverse the process: write the app first, then write the tests. It’s not TDD, but it let me make progress without getting stuck in endless loops. Even though it’s been frustrating, I’m not giving up on TDD. I know it’s a valuable skill, and I’m determined to keep at it until it clicks. It’s a **marathon**, not a sprint, and every step forward counts.

### Tools That Made Life Easier 🛠️

Speaking of testing, I’ve been using **Mockito** and **JUnit** to keep things running smoothly (or as smoothly as testing ever goes). **TestContainers** has been another game-changer—it’s awesome for spinning up real services in isolated environments for testing with docker so I don't even need to have a database installed on my machine. And then there’s **Lombok**. If you’re tired of boilerplate code, this library is a **lifesaver**. It’s shaved hours off my coding sessions and made the code so much cleaner. Enough of classes full of setters, getters, and no-args constructors. **The builder pattern? Chef’s kiss.** Just love that thing!

### Clean Code for the Win

One thing I’ve focused on is keeping the code **clean and readable** (or at least trying to, since I’m a junior 😅). I designed my services to throw exceptions, letting the controllers handle the appropriate responses. I will also set up a **global exception handler** to centralize error handling. It keeps the code neat, separates concerns, and makes debugging a whole lot easier, right now... kind of messy 😅. Looking ahead, I’m super curious about **microservice architecture**. If this project goes well, I’d love to refactor it into a set of microservices. For now, though, I’m sticking to the basics and **building out core features**. No need to overwhelm myself—slow and steady wins the race.


### Wrapping Up

As I wrap up this post, I hope you've enjoyed the journey through my new cloud application project as much as I have. It's been a rollercoaster of learning, frustration, and triumph, but every step has been worth it.
If you're working on your own projects or facing similar challenges, remember that you're not alone. The journey to mastering coding and building something meaningful is long, but it's filled with moments of joy and satisfaction.
Thanks for reading, and I look forward to sharing more updates on my project and other tech adventures in the future. Until next time, keep coding, keep learning, and stay motivated!
Cheers,
Me 🙌
