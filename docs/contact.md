---
layout: default
title: Contact
permalink: /contact/
---
Interested in a piece or just want to say hi? Get in touch.
{% if site.contact_form_endpoint and site.contact_form_endpoint != "" %}
<form class="contact-form" action="{{ site.contact_form_endpoint }}" method="POST">
  <label><span>Name</span><input type="text" name="name" required></label>
  <label><span>Email</span><input type="email" name="email" required></label>
  <label><span>Message</span><textarea name="message" rows="6" required></textarea></label>
  <input type="text" name="_gotcha" tabindex="-1" autocomplete="off" style="display:none">
  <button type="submit">Send</button>
</form>
{% endif %}

Email: [tsldud0302@gmail.com](mailto:tsldud0302@gmail.com)
{% if site.instagram != "" %}

{% endif %}
