Rails.application.routes.draw do
 root "my_pieces#index"
 get "my_lines" => "my_lines#index"
 get "my_lines/:id" => "my_lines#show", as: "line"
 get "my_sections" => "my_sections#index"
 get "my_sections/:id" => "my_sections#show", as: "section"
 get "my_pieces" => "my_pieces#index"
 get "my_pieces/:id" => "my_pieces#show", as: "piece"

end
