rails generate model Port name:string latitude:float longitude:float
rails generate model Boat name:string capacity:integer location:string
rails generate model Job user:references cost:decimal origin_id:references destination_id:references

<%= f.select :origin Port.all.map { |r| [ r.name, r.id ] }, { :include_blank => true } %>
<%= f.select :destination Port.all.map { |r| [ r.name, r.id ] }, { :include_blank => true } %>

<%= select_tag(:origin, Port.all.map { |r| [ r.name, r.id ] }, { :include_blank => true }) %>
<%= select_tag(:destination, Port.all.map { |r| [ r.name, r.id ] }, { :include_blank => true }) %>
