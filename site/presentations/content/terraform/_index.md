+++
title = "Terraform presentation"
outputs = ["Reveal"]
draft = false
date = 2018-10-14T14:27:47+02:00
description = "This is presentation about terraform"
+++

![terraform logo](/presentations/img/terraform/terraform.png)
##### SysOps/DevOps Polska - Poznań #5

<hr/>

##### Mikołaj Młodzikowski

---

```plaintext
root@sodo-meetup # terraform plan -out=introduction
```

* Infrastructure as Code - short summary <!-- .element: class="fragment fade-up" data-fragment-index="1" -->
* Terraform features specification <!-- .element: class="fragment fade-up" data-fragment-index="1" -->
* HCL - HashiCorp Configuration language <!-- .element: class="fragment fade-up" data-fragment-index="2" -->
* "${interpolation}" features <!-- .element: class="fragment fade-up" data-fragment-index="2" -->
* Using/Writting Modules <!-- .element: class="fragment fade-up" data-fragment-index="3" -->
* Adapting terraform to your stack <!-- .element: class="fragment fade-up" data-fragment-index="3" -->
* Snippets! <!-- .element: class="fragment fade-up" data-fragment-index="4" -->

```plaintext
root@sodo-meetup # terraform apply introduction
```
<!-- .element: class="fragment fade-up" data-fragment-index="5" -->

---

{{% section %}}

### IaC Approach

<div class="fragment fade-up">
📖 Wikipedia definiton:
<blockquote>
    Infrastructure as code (IaC) is the process of managing and provisioning computer data centers through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools.
</blockquote>
<p>A good starting article from <a href="https://www.thorntech.com/2018/01/infrastructureascodebenefits/" target="_blank">thorntech</a></p>
</div>

---

### Pros

🤓 Operations: <!-- .element: class="fragment fade-up" data-fragment-index="1" -->

* Infrastructure is self-documentating by its code <!-- .element: class="fragment fade-up" data-fragment-index="1" -->
* Configuration can become part of Continuous Configuration Automation <!-- .element: class="fragment fade-up"  data-fragment-index="2" -->
* Keeping IaC inside VCS: changes tracking, easier rollbacks and reviewing process <!-- .element: class="fragment fade-up"  data-fragment-index="3" -->

💰 Buisness: <!-- .element: class="fragment fade-up"  data-fragment-index="4" -->

* costs reduction & faster execution & reduced risk  <!-- .element: class="fragment fade-up"  data-fragment-index="4" -->

---

### ✋ Cons

* Using IaC with manual setup leads to heavy problems <!-- .element: class="fragment fade-up" -->
* High learning curve <!-- .element: class="fragment fade-up" -->

{{% /section %}}

---

{{% section %}}

### Facts about terraform

* Is declarative -> tell **what** you want
* Uses **push** configuration method
* Communication is JSON based (HCL Compilation) <!-- .element: class="fragment fade-up" data-fragment-index="2" -->
* Extends by plugins written in Golang <!-- .element: class="fragment fade-up" data-fragment-index="2" -->

![Go gopher writting code](/presentations/img/terraform/golang.gif) <!-- .element: class="fragment fade-up" data-fragment-index="2" -->

---

### Digest set of providers

* Clouds: AWS, GCP, Azure, Alibaba, DigitalOcean, Heroku, OpenStack <!-- .element: class="fragment fade-up" -->
* Monitors: Datadog, Grafana, Icinga, New Relic, PagerDuty <!-- .element: class="fragment fade-up" -->
* Software: Docker, Nomad, Consul, Vault, Chef, Kubernetes <!-- .element: class="fragment fade-up" -->
* Networks: Cloudflare, DNS Servers, HTTP Requests <!-- .element: class="fragment fade-up" -->
* Databases, scripts, archives, vcs, many more... <!-- .element: class="fragment fade-up" -->

[Terraform docs on providers](https://www.terraform.io/docs/providers/) <!-- .element: class="fragment fade-up" -->

---

### Important features

* import

{{% /section %}}
