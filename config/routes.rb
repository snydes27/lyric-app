Rails.application.routes.draw do
 root "my_pieces#index"
 resources :my_lines, as: "lines"
 resources :my_sections, as: "sections"
 resources :my_pieces, as: "pieces"
end
