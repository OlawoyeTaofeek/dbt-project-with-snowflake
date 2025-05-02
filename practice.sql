{% set letters = ['a','b','c','d','e','f','g','h','i'] %}
{% set numbers = range(1,10) %}

{% for letter, number in zip(letters, numbers) %}
  SELECT '{{ letter }}' AS letter, 
  {{ number }} AS number,
  {{ number * 2 }} AS salary
  {% if not loop.last %}UNION ALL{% endif %}
{% endfor %}
