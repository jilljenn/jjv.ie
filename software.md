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

### Free software projects

- [`pip install tryalgo`](https://github.com/jilljenn/tryalgo/) → [128 algorithms in Python](https://github.com/jilljenn/tryalgo) to prepare programming contests or coding interviews;
- An anime/manga recommender system [Mangaki](https://mangaki.fr/about/en), see [blog](http://research.mangaki.fr) or [GitHub repo](https://github.com/mangaki/mangaki);
- Adaptively **certifying the digital skills** of French citizens, joint work with [PIX](https://pix.fr), at time at the [French Ministry of Education](https://en.wikipedia.org/wiki/Ministry_of_National_Education_(France)).
- This personal page is written in Markdown, [see this page on GitHub](https://github.com/jilljenn/jilljenn.github.io/blob/master/software.md);
- [See my other GitHub projects](https://github.com/jilljenn/).

### Videoconferencing

You must be wondering what tool you should use.  
[TL;DR] [Jitsi](#jitsi) and [BigBlueButton](#bigbluebutton). Definitely not [Zoom](#zoom).

WebRTC is a project initiated by Google, standardized by W3C, that tried to allow real-time communication (RTC) directly in the browser, through JavaScript APIs. It allowed the first cross-browser video call in February 2013.

See also the [Comparison of secure VoIP software](https://en.wikipedia.org/wiki/Comparison_of_VoIP_software#VoIP_software_with_client-to-client_encryption) on Wikipedia.

### Jitsi

Pros:

- Perfect for video calls
- Free software
- No need to install anything if you have the right browser (not Safari)
- Can record calls (into DropBox)
- Can livestream (to YouTube, for example)
- It is supposedly easy to set up your own server (I didn't try yet though)

Cons:

- Need to install the Jitsi app on smartphones
- For tablets, the Jitsi app is better although it works almost fully on Chrome
- No moderation: we can mute everyone but they can put back their mic
- (Can we share our screen on Firefox now? Or only Chrome?)
- WebRTC is not suitable for end-to-end encryption for more than 2 people (group conferencing), while Apple's FaceTime is

### BigBlueButton

Pros:

- Perfect for lessons, conferences, reading groups
- Works like a charm
- Free software
- People can join a room with mic or listen-only
- There is a chat *and* collaborative note-taking
- Many moderation rights, many features, simple to use
- A pointer is available for highlighting the presenter's slides
- The presenter or the audience can annotate the slides! And it can be part of the recording
- Recordings are amazing: we can click on a slide and the recording will jump to that slide

Cons:

- Some disconnections can happen
- Have your sysadmin install an instance (it's nontrivial, I was told)
- Some people under Firefox couldn't share their screen (it may be okay now)
- (I don't know yet if it is secure in any way)

### Zoom

Pros:

- Works like a charm
- Can have several moderators that can mute everyone

Cons:

- <span style="color: red">Forbidden by CNRS, Inria, New York City, Taiwan</span>
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
- Many settings, hard to find where is what
- Video works in group calls (no moderation)
- (Maybe) if someone wants to share their screen, they should have the desktop app
- On smartphone, it was not clear that my mic was turned on
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
