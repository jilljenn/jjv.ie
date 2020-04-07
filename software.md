---
pagetitle: Jill-Jênn Vie - Software
css:
    - /static/css/normalize.css
    - /static/css/skeleton.css
---
<div class="container">
<div style="display: flex; flex-flow: row wrap;">
<div>
# Jill-Jênn Vie
## <span style="color: #999; margin-top: -1em; display: block">Research Scientist at [Inria](https://inria.fr)</span>
</div>
<nav><ul>
<li>[Publications](index#publications)</li>
<li>[Software](software)</li>
<li>[CV](https://jill-jenn.net/résumé.pdf)</li>
<li>[Piano](https://www.youtube.com/user/Xnihpsel)</li>
</ul></nav>
</div>

### Free software projects I heavily contributed to

[See my GitHub projects](https://github.com/jilljenn/), or [my personal page on GitHub](https://github.com/jilljenn/jilljenn.github.io/blob/master/index.md).

- [`pip install tryalgo`](https://github.com/jilljenn/tryalgo/) → [128 algorithms in Python](https://github.com/jilljenn/tryalgo) to prepare programming contests or coding interviews;
- An anime/manga recommender system [Mangaki](https://mangaki.fr/about/en), see [blog](http://research.mangaki.fr) or [GitHub repo](https://github.com/mangaki/mangaki);
- Adaptively **certifying the digital skills** of French citizens, joint work with the [French government](https://en.wikipedia.org/wiki/Ministry_of_National_Education_(France)).

### Videoconferencing

Maybe you are wondering what tool you should use.

WebRTC is a project initiated by Google, standardized by W3C, that tried to allow real-time communication (RTC) directly in the browser, through JavaScript APIs. It allowed the first cross-browser video call in February 2013.

See also the [Comparison of secure VoIP software](https://en.wikipedia.org/wiki/Comparison_of_VoIP_software#VoIP_software_with_client-to-client_encryption) on Wikipedia.

### Jitsi

Pros:

- Free software
- No need to install anything if you have the right browser (not Safari)
- It is supposedly easy to set up your own server (I never tried though)
- Can actually record calls into DropBox
- Can livestream to YouTube

Cons:

- Need to install the Jitsi app on smartphones and tablets
- Need Chrome if you want to share your screen because Firefox does not work well
- They are not always E2E encrypted (for example, group conferencing), while Apple's FaceTime is

### Zoom

Pros:

- Works like a charm
- Can have several moderators that can mute everyone

Cons:

- <span style="color: red">Forbidden by CNRS, Inria, New York City</span>
- Two security flaws in 2019, one of which allowing an attacker to install a web server on your device.
- Proprietary
- A server costs 15 € a month? This can be in pros though. For something non-free, it is quite cheap.
- Terms of service are terrible. "The Ministry of Defense of the U.K. banned its use." ([Wikipedia](https://en.wikipedia.org/wiki/Zoom_Video_Communications#Criticism))
- Need to install the Jitsi app on smartphones and tablets
- They are [not E2E encrypted](https://theintercept.com/2020/03/31/zoom-meeting-encryption/) while they said they were
- ["*I'm okay with AES-128, but using ECB (electronic codebook) mode indicates that there is no one at the company who knows anything about cryptography.*"](https://www.schneier.com/blog/archives/2020/04/security_and_pr_1.html) - Bruce Schneier
- Some users' Zoom video content was routed "mistakenly" to China, and some encryption keys are issued via Chinese servers, even for non-Chinese calls.

### Hangouts

Pros:

- It actually works if you have the right browser

Cons:

- Google again?
- Screen sharing can take time to load (in my case)

### Discord

Pros:

- Best for gaming. Easy to broadcast the content of an application (game) with its own sound.

Cons:

- Proprietary
- [Terms of service](https://tosdr.org/#discord) may not be good

### Scopia

Pros:

Cons:

- Does not work on Linux

### ConferenceMe

Pros:

Cons:

- Only works on Windows

### Linphone

Pros:

- Free software
- It implements [SIP](https://en.wikipedia.org/wiki/Session_Initiation_Protocol) so we actually do not need both softwares just above

Cons:

- When I tried to use it on my phone, I tried to set the video and the application quit unexpectedly
- When I tried to use it on my tablet, it forced me to set the video and my modem rebooted unexpectedly. It happened twice.
</div>
