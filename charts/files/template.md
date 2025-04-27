+++
date = "{{ timestamp | datetimeformat(format="iso") }}"
title = "This Week in Matrix {{ timestamp | dateformat(format="short") }}"
path = "/blog/{{ timestamp | datetimeformat(format="[year]/[month]/[day]") }}/this-week-in-matrix-{{ timestamp | dateformat(format="short") }}"

[taxonomies]
author = ["{{ editor }}"]
category = ["This Week in Matrix"]
+++

## Matrix Live

{{youtube_player(video_id="")}}

{%- macro news(news_items) -%}
  {%- for item in news_items %}

[{{ item.reporter_display_name }}](https://matrix.to/#{{ item.reporter_id }}) {{ config.verbs | random }}

> {{ item.message | replace("\n", "\n> ") }}
    {%- if item.images -%}
      {%- for imgId, image in item.images | dictsort %}
> ![]({{ image[0] }})
      {%- endfor %}
    {%- endif -%} {#- news item images #}

    {%- if item.videos -%}
      {%- for vidId, video in item.videos | dictsort %}
> {{ "{{" }}<video src="{{ video[0] }}">{{ "}}" }}
      {%- endfor %}
    {%- endif -%} {#- news item videos #}

  {%- endfor %} {#- news_items #}
{%- endmacro %}

{%- for key, entry in sections | dictsort %}

## {{entry.section.title}}

  {{- news(entry.news) }}

  {%- for entry in entry.projects %}
  
### {{entry.project.title}} ([website]({{entry.project.website}}))

{{entry.project.description}}

  {{- news(entry.news) }}

  {%- endfor %} {#- projects #}
 
{%- endfor %} {#- sections #}

## Dept of Ping

Here we reveal, rank, and applaud the homeservers with the lowest ping, as measured by [pingbot](https://github.com/maubot/echo), a [maubot](https://github.com/maubot/maubot) that you can host on your own server.

### [#ping:maunium.net](https://matrix.to/#/#ping:maunium.net)
Join [#ping:maunium.net](https://matrix.to/#/#ping:maunium.net) to experience the fun live, and to find out how to add YOUR server to the game.

## That's all I know

See you next week, and be sure to stop by [#twim:matrix.org](https://matrix.to/#/#twim:matrix.org) with your updates!

To learn more about how to prepare an entry for TWIM check out [the TWIM guide](@/twim-guide.md).
