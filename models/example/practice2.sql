-- First block: letters
{% set letters = 'abcdefghi' %}
{% for i in letters %}
  SELECT '{{ i }}' AS val
  {% if not loop.last %}UNION ALL{% endif %}
{% endfor %}

UNION ALL

-- Second block: numbers as strings
{% for i in range(10) %}
  SELECT '{{ i }}' AS val
  {% if not loop.last %}UNION ALL{% endif %}
{% endfor %}
